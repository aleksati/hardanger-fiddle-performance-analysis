autowatch = 1;
inlets = 1;
outlets = 2;

// when adding the patterns to the [track_data] dict, we also add them here.
global_patterns = new Array(); // a 2D array [ [pattern1] [pattern2] [pattern3] etc..]

pattern_spoff = new Array();
pattern_spoff[0] = [1, 3, 4, 6];
pattern_spoff[1] = [7, 11, 12, 16];
pattern_spoff[2] = [1, 1, 4, 4, 7, 7, 12, 12];
pattern_spoff[3] = [2, 3, 5, 6, 10, 11, 15, 16];
pattern_spoff[4] = [8, 11, 13, 16];
pattern_spoff[5] = [3, 3, 6, 6, 11, 11, 16, 16];


function add_patterns() {
    // if they have been initted..
	global_patterns.push(arrayfromargs(arguments));
}

function clear_data() {
	global_patterns = new Array();
}


function print() {
	post(global_patterns[0]);
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

// If the input bar range [3 5] is found in a pattern stored in global_patterns,
// we find all the beat onsets (ms) and "offsets" of the pattern repititions. 
// and output them one at a time.

// together(!) with a list of the bars in the pattern to "beatlist_to_beatratios".
// if we dont find any, we simply output the beat onset of the input range.

function input_to_beat_onsets(from, to) {
    // if they have been initted..
    var found_pattern = new Array();

    // We search the patterns and look for the "from" and "to" bars in sucession.
    for (var i=0; i<pattern_spoff.length; i++) {
        var from_idx = 0;
        var to_idx = 0;

        if (pattern_spoff[i].indexOf(from) != -1) {
            from_idx = pattern_spoff[i].indexOf(from);
            if (pattern_spoff[i].indexOf(to) != -1) {
                to_idx = pattern_spoff[i].indexOf(to);
            }
        }
        if ((to_idx - 1) == from_idx) {  
            //outlet(0, "pattern:", pattern_spoff[i], "has values:", from, to);
            found_pattern = pattern_spoff[i];
            break;
        }
    }
    // we have found a pattern we will use.
    if (found_pattern.length) { 
        // iterate over the pattern instances.
        for (var x=0; x<found_pattern.length; x+=2) {
            

            // FIRST; we need to look at global_marker_tags for the onsets of the bars in this instance. 
            // output through 0
            // maybe just create the key, and get it from the dictionary? beat onsets and duration..

            // and also.. the domain stuff.. 


            // Then, we collect all the beat ratios of the instance
            var pattern_instance = list_fill(found_pattern[x], found_pattern[x+1]);
            // output through 1

        }
        
    } else {
        outlet(0, "found no match..:");
        outlet(0, "select these bars:", list_fill(from, to));
    }
}


// inside the above function we call this function? 
function barlist_to_beatratios() {
    // this takes a list of bars and finds all the beat ratios of those bars,
    // adds them together in a list,
    // and outputs them.

    // maybe this can be done in Max?
}