autowatch = 1;
inlets = 1;
outlets = 2;

// global variables in use:
// global_beat_ratios
// global_calcratio_init
// global_bach2onset_init

// when adding the patterns to the [track_data] dict, we also add them here.
var patterns = new Array(); // a 2D array [ [pattern1] [pattern2] [pattern3] etc..]


function add_patterns() {
    if (global_calcratio_init && global_bach2onset_init) {
        patterns.push(arrayfromargs(arguments));
    } else {
        error("Init error (patterns2dictdata). The [mir2bach] function has not been called yet..?");
    }
}


function clear_data() {
	patterns = new Array();
}


// fill out the to and from bars.
function list_fill(bar1, bar2) {
    var inp_list = new Array(bar1, bar2);
    var output = new Array();
    for (var i=0; i<inp_list.length; i++) {
        if (i != (inp_list.length-1)) {
            var count = inp_list[0];
            while (count <= inp_list[1]) {
                output.push(count);
                count +=1;
            }
        }
    }
    return output;
}


// Look for "from" "to" combos in the patterns txt. 
// If we fant a pattern, output beat onsets to [bach.roll] (for coloring of notes and domain)
// and bar info to be used in the jsui plots (beat_ratios).
function bar2dictdata(from, to) {
    if (from <= to) {
        if (patterns.length) {
            if ((from <= global_beat_ratios.length) && (to <= global_beat_ratios.length)) {

                var found_pattern = new Array();

                // We search the patterns in the "from" and "to" bar-input.
                for (var i=0; i<patterns.length; i++) {
                    var from_idx = 0;
                    var to_idx = 0;
                    var curr_pattern = patterns[i].slice();

                    if (curr_pattern.indexOf(from) != -1) {
                        from_idx = curr_pattern.indexOf(from);

                        //the "from" index has to be even (0-based).
                        if (from_idx%2 == 0) {
                            curr_pattern.splice(from_idx, 1);

                            if (curr_pattern.indexOf(to) != -1) {
                                to_idx = curr_pattern.indexOf(to);

                                // now that we have removed the "from" index. The "to" index also has to be even.
                                if (to_idx%2 == 0) {
                                    if (to_idx == from_idx) {  
                                        found_pattern = patterns[i];
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }

                // we have found a pattern we will use.
                if (found_pattern.length) { 
                    post("More pattern matches were found!");
                    // iterate over the pattern instances.
                    for (var x=0; x<found_pattern.length; x+=2) {

                        // first we send out the info to "select, color and unselect" all the pattern instances found in the [bach.roll]
                        // the outputs index the "beat_onset_and_duration" keys in the track_data dict.
                        outlet(0, "beat"+found_pattern[x]+".1");

                        // to get the right selection in [bach.roll], we need the onset of the 1st beat of the bar AFTER "to".
                        if ((found_pattern[x+1]+1) <= global_beat_ratios.length) {
                            outlet(0, "beat"+(found_pattern[x+1]+1)+".1");
                        } else {
                            // we have hit the last bar, meaning that found_pattern[x+1] is the last bar of the song.
                            // therefore we just take the 3rd beat of the last bar as "to".
                            outlet(0, "beat"+found_pattern[x+1]+".3");
                        }
                        outlet(0, "bang");

                        // when we "hit" the bars (pattern instance) that we initially selected, we set the domain of [bach.roll] to this instance.
                        if ((found_pattern[x] == from) && (found_pattern[x+1] == to)) {
                            outlet(0, "bang-domain");
                        }

                        // Then, we want to send out info to plot in our jsui objects. We plot the beat ratios of every pattern instance, layered.
                        var pattern_instance = list_fill(found_pattern[x], found_pattern[x+1]);
                        for (var y=0; y<pattern_instance.length; y++) {
                            // the outputs index the "beat_ratios" keys in the track_data dict. With bars.
                            outlet(1, "bar"+pattern_instance[y]);
                        }
                        outlet(1, "bang");
                    }
                } else {
                    post("No further pattern matches were found..");
                    // found no matches, so we just output the input in "dict" format.
                    outlet(0, "beat"+from+".1");

                    if (from == to) {
                        if ((to+1) <= global_beat_ratios.length) {
                            outlet(0, "beat"+(to+1)+".1");
                        } else {
                            outlet(0, "beat"+(to)+".3");
                        }
                    } else {
                        outlet(0, "beat"+to+".1");   
                    }
                    outlet(0, "bang");
                    outlet(0, "bang-domain");

                    var pattern_instance = list_fill(from, to);
                    for (var y=0; y<pattern_instance.length; y++) {
                        // the outputs index the "beat_ratios" keys in the track_data dict. With bars.
                        outlet(1, "bar"+pattern_instance[y]);
                    }
                    outlet(1, "bang");
                }
            } else {
                error("(patterns2dictdata) -- bar selection numbers are too high!");
            }
        } else {
            error("(patterns2dictdata) -- Pattern array is empty. Add pattern.txt first.");
        }
    } else {
        error("(patterns2dictdata) -- from-bar is greater than to-bar.");
    }
}