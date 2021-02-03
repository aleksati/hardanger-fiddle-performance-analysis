autowatch = 1;
inlets = 1;
outlets = 1;

// Recreates note Onsets-and Durations from the new beat onsets (ms) supplied from [at.bach2onset.js].
// We calculate these new note onsets-and durations based on the ratios collected from input_hfdata dict.
// We ALSO update the [input_hfdata] dict with new track duration, beat onsets + durations and beat ratios.

// global variables in use:
// global_note_onset_ratios
// global_note_duration_ratios
// global_note_onsets
// global_note_durations
// global_beat_onset_and_duration
// global_bach2onset_init
// global_beat_ratios

function recreateOD() {
    if (global_bach2onset_init) {
        var new_beat_onsets = arrayfromargs(arguments); // 1D array = [onset(ms),  onset(ms), onset(ms) etc..]
        global_note_onsets = new Array(); 
        global_note_durations = new Array();

        var global_bar_durations = new Array(); // created and fixed here. here only?
        global_beat_ratios = new Array();

        if (new_beat_onsets.length-1 == global_note_onset_ratios.length) {
    
            // collect new global beat durations and bar durations.
            for (var x=0; x<new_beat_onsets.length-1; x++) {
                global_beat_onset_and_duration[x][1] = new_beat_onsets[x+1] - new_beat_onsets[x];
                global_beat_onset_and_duration[x][0] = new_beat_onsets[x];

                if (x%global_beats_per_bar === 0) { //for every third x (in our case)
                    global_bar_durations.push(new_beat_onsets[x+global_beats_per_bar] - new_beat_onsets[x]);
                }
            }

            // update the global_beat_ratios since we have now changed them.
            // for every bar
            for (var w=0; w<Math.round(global_beat_onset_and_duration.length/global_beats_per_bar); w++) {
                global_beat_ratios[w] = new Array();
                // for the number of beats in every bar.
                for (var z=0; z<global_beats_per_bar; z++) {
                    global_beat_ratios[w].push((global_beat_onset_and_duration[z+(w*global_beats_per_bar)][1] / global_bar_durations[w])*100);
                    //global_beat_ratios[w].push((global_beat_onset_and_duration[w][z] / global_bar_durations[w])*100);
                }
            }

            // Create new note Onsets-and Durations based on the input of the new beat onsets and the ratios from [calcRatios.js].
            // iterate over every beat
            for (var i=0; i<global_beat_onset_and_duration.length; i++) {
                // iterate over every item in every beat.
                for (var y=0; y<global_note_onset_ratios[i].length; y++) {
                    // collect the new note onsets and durations.
                    global_note_durations.push((global_note_duration_ratios[i][y]/100) * global_beat_onset_and_duration[i][1]);
                    global_note_onsets.push(((global_note_onset_ratios[i][y]/100) * global_beat_onset_and_duration[i][1]) + new_beat_onsets[i]);
                }
            }
    
            // send the info to bach.roll via the main [route] object.
            outlet(0, "durations", global_note_durations);
            outlet(0, "onsets", global_note_onsets);
            outlet(0, "bang");

            // lastly, we update the [dict @name input_hfdata] with the new info-
            //update_dict(new_beat_onsets);
            update_dict();

        } else {
            error("The size of the beat onset input list does not match the onset and duration ratio size..")
            return;
        }
    } else {
        error("Init error (ratioTransform). The [mir2bach] function has not been called yet..?");
        return;
    }
}


function update_dict() {
    // ref the track_data dict.
    var inn_dict = new Dict("input_hfdata");

    // update the track duration
    inn_dict.remove(global_filename+"::total_duration");
    inn_dict.replace(global_filename+"::total_duration", 
                    (global_beat_onset_and_duration[global_beat_onset_and_duration.length-1][0] + 
                    global_beat_onset_and_duration[global_beat_onset_and_duration.length-1][1]) - 
                    global_beat_onset_and_duration[0][0]);

    // go through every bar
    inn_dict.remove(global_filename+"::ratios::beat_ratios");
    for (var a=0; a<Math.round(global_beat_onset_and_duration.length/global_beats_per_bar); a++) {
        // update the beat ratios
        var key = global_filename+"::ratios::beat_ratios::bar";
        inn_dict.replace(key+(a+1), global_beat_ratios[a]);
    }

    // go through every beat
    inn_dict.remove(global_filename+"::beat_onset_and_duration");
    for (var p=0; p<global_beat_onset_and_duration.length; p++) {
        // update the beat onset and duration (ms).
        var tag = global_markers[p][2] + (global_markers[p][3]/10);
        var str_tag = "beat" + tag
        var key = global_filename+"::beat_onset_and_duration::";
        inn_dict.append(key+str_tag, global_beat_onset_and_duration[p]);
    }
}