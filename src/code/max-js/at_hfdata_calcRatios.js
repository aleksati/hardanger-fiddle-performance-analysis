autowatch = 1;
inlets = 1;
outlets = 1;

// Processes the global_data and collects all ratios and data necessary for interaction. 
// Also creates the [track_data] dict and fills it with inital values.

// global variables in use:
// global_data
// global_data_onset_idx
// global_data_offset_idx 
// global_data_bar_idx
// global_data_numer_idx
// global_data_denom_idx
// global_beats_per_bar
// global_calcratio_init

// global_filename
// global_beat_durations
// global_bar_durations
// global_note_dur_ratios
// global_note_onset_ratios
// global_beat_ratios

// store the duration of every beat (ms) in the track. onset to onset
global_beat_durations = new Array(); // 1D array = [ beat1.1 - duration(ms), beat1.2 - duration(ms), beat1.3 - duration(ms) ]
// store the duration of every bar (ms) in the track. onset to onset.
global_bar_durations = new Array(); // 1D array = [ bar1 - duration(ms), bar2 - duration(ms), bar3 - duration(ms) ]

// store the note duration percentages with respect to the duration (ms) of the associated beat. 
global_note_dur_ratios = new Array(); // 2D array = [ [beat1.1 - note duration ratios] [beat1.2 - note duration ratios] [beat1.3 - note duration ratios] ].
// store the note onset percentages with respect to the duration (ms) of the associated beat. 
global_note_onset_ratios = new Array(); // 2D array = [ [beat1.1 - note onset ratios] [beat1.2 - note onset ratios] [beat1.3 - note onset ratios] ].
// store the ratios of evey beat with respect to the duration of the bar.
global_beat_ratios = new Array(); // 2D array = [ [bar1 - beat1.2 and 3 ratio] [bar2 - beat1.2 and 3 ratio] [bar3 - beat1.2 and 3 ratio] etc.].


// calculate the notes duration and onset ratios with respect to the transcriptions beat duration (%)
function ratio_init() {
    global_beat_durations = new Array();
    global_bar_durations = new Array();

    global_note_dur_ratios = new Array();
    global_note_onset_ratios = new Array();
    global_beat_ratios = new Array();

    // first, collect beat durations (ms) and the bar durations (ms).
    for (var q=0; q<global_marker_tags.length-1; q++) {
        // beat durations
        global_beat_durations.push(global_marker_tags[q+1][1] - global_marker_tags[q][1]);

        // bar durations
        if (global_marker_tags[q][3] == 1) {
            global_bar_durations.push(global_marker_tags[q+global_beats_per_bar][1] - global_marker_tags[q][1]);
        }
    }

    // next, collect note onset and duration ratios, and beats ratios.
    var collec_bool = false;
    var total_num_bars = Math.round(global_beat_durations.length / global_beats_per_bar);

    // iterate over the number of bars.
    for(var i=0; i<total_num_bars; i++) {
        global_beat_ratios[i] = new Array();

        // iterate over the number of beats
        for(var j=0; j<global_beats_per_bar; j++) {
            var temp_data = new Array();

            // iterate over every row of the global_data and collect the desired rows (according to the current beat and bar number) for processing
            for(var x=0; x<global_data.length; x++) {
                // we look at the denominator. If we find a 3, then we check if its the correct bar and beat before setting the collect bool to true. 
                // if the row doesnt satisfy these conditions, we dont collect.
                if (global_data[x][global_data_denom_idx] == global_beats_per_bar) {
                    if ((global_data[x][global_data_bar_idx] == (i+1)) && (global_data[x][global_data_numer_idx] == (j+1))) {
                        collec_bool = true;
                    } else {
                        collec_bool = false;
                    }
                }
                if (collec_bool) {
                    temp_data.push(global_data[x]);
                }
            }

            // collect note onset percentages with respect to the beat duration.
            var temp_array = new Array();
            for (var z=0; z<temp_data.length; z++) {
                temp_array.push((((temp_data[z][global_data_onset_idx]-temp_data[0][global_data_onset_idx])*1000) / global_beat_durations[j+(i*global_beats_per_bar)]) * 100);
            }
            global_note_onset_ratios.push(temp_array);
            
            // collect note duration percentage with respect to the beat duration.
            temp_array = new Array();
            for (var w=0; w<temp_data.length; w++) {
                temp_array.push((((temp_data[w][global_data_offset_idx] - temp_data[w][global_data_onset_idx])*1000) / global_beat_durations[j+(i*global_beats_per_bar)]) * 100);
            }
            global_note_dur_ratios.push(temp_array);

            // collect beat ratio percentage with respect to the bar duration.
            global_beat_ratios[i].push((global_beat_durations[j+(i*global_beats_per_bar)] / global_bar_durations[i])*100);
        }
    }

    // print pretty to console :) 
    if (global_note_onset_ratios.length == global_note_dur_ratios.length) {
        global_calcratio_init = true;
        ratios2dict();
    } else {
        global_calcratio_init = false;
        error("the duration and onset sizes do not match each other.. They should, so something is wrong..Try again..");
    }
}


// add all the "data" to a dict.
function ratios2dict() {
    if (global_calcratio_init) {

        // create a new dictionary
        var hf_dict = new Dict("track_data");

        hf_dict.set(global_filename);
        hf_dict.replace(global_filename+"::total_bar_number", Math.round(global_beat_durations.length / global_beats_per_bar));
        hf_dict.replace(global_filename+"::beats_per_bar", global_beats_per_bar);
        hf_dict.replace(global_filename+"::total_duration", global_beat_durations.reduce(function(a,b){
            return a+b;
        }, 0));

        // go through every bar
        for (var j=0; j<Math.round(global_beat_durations.length/global_beats_per_bar); j++) {
            var key = global_filename+"::ratios::beat_ratios::bar";
            hf_dict.replace(key+(j+1), global_beat_ratios[j]);
        }
        
        // go through every beat.
        for (var i=0; i<global_beat_durations.length; i++) {
            // create the tag for all keys
            var tag = global_marker_tags[i][2] + (global_marker_tags[i][3]/10);
            var str_tag = "beat" + tag;

            // add the note_onset_ratios
            var key = global_filename+"::ratios::note_onset_ratios::";
            for (var y=0; y<global_note_onset_ratios[i].length; y++) {
                hf_dict.append(key+str_tag, global_note_onset_ratios[i][y]);
            }

            // add the note_duration_ratios
            key = global_filename+"::ratios::note_duration_ratios::";
            for (var w=0; w<global_note_dur_ratios[i].length; w++) {
                hf_dict.append(key+str_tag, global_note_dur_ratios[i][w]);
            }

            // Lastly, add the BEAT onset (ms) and duration.
            key = global_filename+"::beat_onset_and_duration::";
            // add the onset
            hf_dict.append(key+str_tag, global_marker_tags[i][1]);
            // duration
            hf_dict.append(key+str_tag, global_beat_durations[i]);

        }
    } else {
        error("Error (ratios2dict).. global_calcratio_init is false.");
    }
}

