autowatch = 1;
inlets = 2;
outlets = 2;


// Global variables:
// global_note_duration_ratios
// global_note_onsets -- this is used for find the notes and then selecting them in bach.roll.

var scale_factor = 0;
declareattribute("scale_factor");
var prev_scale_fator = 101;

var scaled_note_dur_ratios = new Array(); // 2d array [[1.1beat notes] [1.2beat notes] [etc..]]
var flattened_scaled_note_dur_ratios = new Array(); //1d array of the above.

// collected in findPatterns.
// we also use this to PLOT. so they are global
global_sel_len = 0;
global_note_beat_idx = new Array(); // beat index of every first note in a recurrent pattern
global_note_beat_pos_idx = new Array(); // the starting notes position in the above beat.
global_pattrn_idx_lookup = {}; // for 1D lookup


// scale all elements of a list to nearest scale_factor.
function scale(f) {
    if (scale_factor > 0) {
        var rest = f%scale_factor;
        if (rest <= (scale_factor/2)) { 
            if (f-rest == 0) {
                return 1;
            } else {
                return f-rest;
            }
        } else {
            return (f+scale_factor)-rest;
        }
    } else {
        return f;
    }
}


// create a scaled (rounded to nearest scale_factor) version of the duration ratios
function reScaleGlobal() {
    scaled_note_dur_ratios = new Array();
    for (var i=0; i<global_note_duration_ratios.length; i++) {
        scaled_note_dur_ratios[i] = new Array();
        global_note_duration_ratios[i].forEach(function(item) {
            scaled_note_dur_ratios[i].push(scale(item));
        });
    }
    // flatten the list for the pattern finding.
    flattened_scaled_note_dur_ratios = scaled_note_dur_ratios.reduce(function (prev, curr) {
        return prev.concat(curr);
    });
}


// output onset values to be colored in bach.
function toBachColor() {
    for (var i=0; i<global_note_onsets.length; i++) {
        if (global_pattrn_idx_lookup[i]) {
            outlet(0, global_note_onsets[i], global_note_onsets[i+(global_sel_len-1)]);
        }
    }
}


// compares two lists, returns true if they are the same, false if not.
function compareList(lst1, lst2) {
    if (lst1.length != lst2.length) {
        return false;
    }
    for (var x=0; x<lst1.length; x++) {
        if (lst1[x] != lst2[x]) {
            return false;
        }
    }
    return true;
}


// takes the scaled_selection and finds similar occurances in our 2D note ratio structure.
function findPatterns(input_lst) {
    
    global_sel_len = input_lst.length;
    global_note_beat_idx = new Array();
    global_note_beat_pos_idx = new Array();

    // search for first of the input_lst in the flattened_scaled_note_dur_ratios.
    global_pattrn_idx_lookup = {}; // this store the 1D(!!) idx'es of the start positions of every repitition of the current scaled_selection
    for (var i=0; i<flattened_scaled_note_dur_ratios.length; i++) {
        var item = flattened_scaled_note_dur_ratios[i];
        var possible_pattr = new Array();
        // if we find a match on the first element, store the next N number of items in a list.
        if (item == input_lst[0]) {
            possible_pattr = flattened_scaled_note_dur_ratios.slice(i, (i+global_sel_len));
            // now we compare to see if the possible_pattr is == to the input list.
            if (compareList(input_lst, possible_pattr)) {
                // if true, then we store the INDEX of that patterns occurance
                // because the indexes are always unique. 
                // later, we will collect indexes and find matches that way.
                // we use a hash table because we might collect many.
                global_pattrn_idx_lookup[i] = true;
            }
        }
    }
    
    // iterate over the 2D array and find the global_note_beat_idx and global_note_beat_pos_idx of the found patterns.
    // These idxes we can use for coloring, and plotting etc.
    var count = 0;
    for (var y=0; y<scaled_note_dur_ratios.length; y++) {
        for (var w=0; w<scaled_note_dur_ratios[y].length; w++) {
            // if we hit a note index.
            if (global_pattrn_idx_lookup[count]) {
                // store THAT beat index.
                global_note_beat_idx.push(y);
                // and the note's "position" in that beat.
                global_note_beat_pos_idx.push(w);
            }
            count += 1;
        }        
    }

    //post("global_note_beat_idx: ", global_note_beat_idx);
    //post("--------------");
    //post("global_note_beat_pos_idx", global_note_beat_pos_idx);
}


// main function.
// gets an output list of the duration ratios of the selected notes in bach.roll.
function list() {
    // scale the global note duration ratios.
    if (scale_factor != prev_scale_fator) {
        reScaleGlobal();
    }
    // scale the input selection of ratios.
    var selection = arrayfromargs(arguments);
    var scaled_selecton = new Array();
    selection.forEach(function(elem) {
        scaled_selecton.push(scale(elem));
    });


    //for (var i=0; i<scaled_note_dur_ratios.length; i++) {
    //    outlet(0, "scaled_ratios: ", scaled_note_dur_ratios[i]);
    //}
    //outlet(0, "flattened:", flattened_scaled_note_dur_ratios);
    findPatterns(scaled_selecton);
    toBachColor();
    outlet(1, "bang"); // send to plotting!

    prev_scale_fator = scale_factor;
}


