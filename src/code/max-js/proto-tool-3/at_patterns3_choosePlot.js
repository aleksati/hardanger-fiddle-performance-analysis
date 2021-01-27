autowatch = 1;
inlets = 2;
outlets = 2;


// global variables:
// global_sel_len -- number- 1-based length of selection.
// global_note_beat_idx --1d -- 0-based
// global_note_beat_pos_idx -- 1d -- 0-based
// global_pattrn_idx_lookup = {} --for 1D lookup


// data as list with color
// grid Y (x is made automatically)
// labels for X and Y (labels_x and labels_y)
// sting title for X and Y (title_x and title y)

var pattr_colors = new Array();


function beatPositions() {
    // now find the rest of the patterns notes assosiated beat position.
    var pattr_beat_lst = new Array();
    for (var i=0; i<global_note_beat_idx.length; i++) {
        var beatpos = global_note_beat_idx[i];
        var notepos = global_note_beat_pos_idx[i];
        var inc = 0;

        // Now i need to add every note in the pattern
        for (var y=0; y<global_sel_len; y++) {

            // we start at the point in the 2D array where the pattern starts.
            // if we run out of notes in our beat, increment the beat and set the notepos to 0.
            if (notepos+inc == global_note_duration_ratios[beatpos].length-1) {

                // // add the last beat index of the current note in the pattern.
                pattr_beat_lst.push((beatpos%global_beats_per_bar)+1);

                // increment the beatposition index and set the notepos, inc to 0
                beatpos += 1;
                notepos = 0;
                inc = 0;
            } else {

                // add the beat index of the current note in the pattern.
                pattr_beat_lst.push((beatpos%global_beats_per_bar)+1);

                // increment the count
                inc += 1;
            }
        }
    }
    // output data and configure plot.
    outlet(0, "clear_all_data");
    outlet(0, "grid_y", 0, 1, 2, 3, 4);
    outlet(0, "range", 0, 4);
    outlet(0, "labels_y", "beat1", "beat2", "beat3", "beat4");
    var labels_x = new Array();
    for (var y=1; y<=global_sel_len; y++) {
        labels_x.push("note"+y);
    }
    outlet(0, "labels_x", labels_x);
    outlet(0, "title_x", "Selection Timing Patterns");
    outlet(0, "title_y", "Metric position");
    var count = 0;
    for (var i=0; i<pattr_beat_lst.length; i+=global_sel_len) {
        var data = pattr_beat_lst.slice(i, (i+(global_sel_len)));
        var clr = new Array("color");
        pattr_colors[count].forEach(function(elem) {
            clr.push(elem);
        });
        outlet(0, data.concat(clr));
        count += 1;
    }
    outlet(0, "bang");
}


function bang() {
    beatPositions();
}


function pattr_color() {
    pattr_colors.push(arrayfromargs(arguments));
}


function clear() {
    pattr_colors = new Array();
}