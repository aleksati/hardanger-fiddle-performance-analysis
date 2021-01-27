autowatch = 1;
inlets = 1;
outlets = 1;

// global_note_duration_ratios
// global_note_onsets
// global_note_durations
// global_markers
// global_beats_per_bar

var lookup_table = {};

// get [onset, duration] from all notes selected. sequentially.
function list() {
    lst = arrayfromargs(arguments);
    if (!lookup_table[lst[0]]) {
        lookup_table[lst[0]] = {};
    }
    lookup_table[lst[0]][lst[1]] = true; 
}

// is called first.
function clear() {
    lookup_table = {};
}


// we find the note_duration_ratios associated with the manual note selections made in [bach.roll]
function bang() {
    var note_idxs = {};
    for (var i=0; i<global_note_onsets.length; i++) {
        if (lookup_table[global_note_onsets[i]]) {
            if (lookup_table[global_note_onsets[i]][global_note_durations[i]]) {
                // store the correct note indexes of the selected notes. 
                note_idxs[i] = true;
            }
        }
    }

    // check all note_duration_ratios arrays
    var count = 0;
    var note_beat_idx = new Array();
    var note_beat_pos_idx = new Array();
    for (var y=0; y<global_note_duration_ratios.length; y++) {
        // add all the "beat" notes together until I hit a note index.
        for (var z=0; z<global_note_duration_ratios[y].length; z++) {
            // if we hit a note index.
            if (note_idxs[count]) {
                // store THAT beat index.
                note_beat_idx.push(y);
                // and the note's "position" in that beat.
                note_beat_pos_idx.push(z);
            }
            count += 1;
        }
    }

    // Use the beat and note_pos idx to find the duration ratios of the bach.roll selection
    var cumul_note_ratios = new Array();
    for (var w=0; w<note_beat_idx.length; w++) {
        // this might be usufull when PLOTTING the selections placement in the bar. so theyr beats.
        //var bar = global_markers[note_beat_idx[w]][2];
        //var beat = global_markers[note_beat_idx[w]][3];
        //outlet(0,"beat: ", bar+(beat/10));
        //outlet(0, "beat idx (0-based): ", note_beat_idx[w]);
        //outlet(0, "position idx (0-based): ", note_beat_pos_idx[w]);

        cumul_note_ratios.push(global_note_duration_ratios[note_beat_idx[w]][note_beat_pos_idx[w]]);
    }

    // Outputs a list of note duration ratios from the selected pattern in bach.roll
    outlet(0, cumul_note_ratios);
}
