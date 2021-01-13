autowatch = 1;
inlets = 1;
outlets = 1;

// global vriables declared in [at.transc2bach.js]
// global_data = new Array(); [ [onset, offset, pitch, bar, numerator, denominator, ornament] ]

// global_data_onset_idx = 0;
// global_data_offset_idx = 1;
// global_data_pitch_idx = 2;
// global_data_bar_idx = 3;
// global_data_numer_idx = 4;
// global_data_denom_idx = 5;
// global_data_orna_idx = 6;

// global_beats_per_bar = 3;
// global_calcratio_init = false;

// store the note duration percentages with respect to the duration (ms) of the associated beat. 
global_dur_ratios = new Array();
// store the note onset percentages with respect to the duration (ms) of the associated beat. 
global_onset_ratios = new Array();
// store the duration of every beat (ms) in the track. onset to onset
global_beat_durations = new Array(); 
// store the current track filename.
global_filename = "";
function track_filename(name) {
    global_filename = name;
}

// calculate the notes duration and onset ratios with respect to the transcriptions beat duration (%)
function ratio_init() {
    global_dur_ratios = new Array(); 
    global_onset_ratios = new Array();
    global_beat_durations = new Array();
    var temp_array = new Array();

    // first, collect the beat durations (ms) of every beat in the track by adding onsets of every 1st beat note to array.
    for (var y=0; y<global_data.length; y++) {
        if (global_data[y][global_data_denom_idx] == global_beats_per_bar) {
            temp_array.push(global_data[y][global_data_onset_idx]*1000); // in ms
        }
        // we also need to add the last beat's offset as an "onset".
        if (y == global_data.length-1) {
            temp_array.push(global_data[y][global_data_offset_idx]*1000);
        }
    }
    // calc the difference between each subsequent beat onsets and add the durations to global_beat_durations.
    for (var q=0; q<temp_array.length-1; q++) {
        global_beat_durations.push(temp_array[q+1] - temp_array[q]);
    }


    // next, collect the onset and duration percentages of every note with respect to their associated beat's duration.
    var temp_data;
    var collec_bool = false;
    var curr_beat_number = 0;
    var curr_bar_number = 0;
    var total_num_bars = global_beat_durations.length / global_beats_per_bar //data[data.length-1][global_data_bar_idx];

    // iterate over the number of bars.
    for(var i=0; i<total_num_bars; i++) {
        // set the current bar number
        curr_bar_number = i+1;
        //outlet(0, "bar number:", curr_bar_number);

        // iterate over the number of beats
        for(var j=0; j<global_beats_per_bar; j++) {
            // set the current beat number
            curr_beat_number = j+1;
            //outlet(0, "beat number:", curr_beat_number);
            temp_data = new Array();

            // iterate over every row of the data and collect the desired rows (according to the current beat and bar number) for processing
            for(var x=0; x<global_data.length; x++) {
                // we look at the denominator. If we find a 3, then we check if its the correct bar and beat before setting the collect bool to true. if the row doesnt satisfy these conditions, we dont collect.
                if (global_data[x][global_data_denom_idx] == global_beats_per_bar) {
                    if ((global_data[x][global_data_bar_idx] == curr_bar_number) && (global_data[x][global_data_numer_idx] == curr_beat_number)) {
                        collec_bool = true;
                    } else {
                        collec_bool = false;
                    }
                }
                if (collec_bool) {
                    temp_data.push(global_data[x]);
                }
            }

            // collect onset percentages (the notes "position" in the bar) of each note with respect to the beat duration.
            temp_array = new Array();
            for (var z=0; z<temp_data.length; z++) {
                temp_array.push((((temp_data[z][global_data_onset_idx]-temp_data[0][global_data_onset_idx])*1000) / global_beat_durations[j+(i*global_beats_per_bar)]) * 100);
            }
            global_onset_ratios.push(temp_array);
            
            // collect duration percentage of each note with respect to the beat duration.
            temp_array = new Array();
            for (var w=0; w<temp_data.length; w++) {
                temp_array.push((((temp_data[w][global_data_offset_idx] - temp_data[w][global_data_onset_idx])*1000) / global_beat_durations[j+(i*global_beats_per_bar)]) * 100);
            }
            global_dur_ratios.push(temp_array);
        }
    }

    // print pretty to console :) 
    if (global_onset_ratios.length == global_dur_ratios.length) {
        global_calcratio_init = true;
        ratios2dict();
        //outlet(0, "Number of bars", total_num_bars);
        //outlet(0, "-----------------------------------");
        //for(var x=0; x<global_onset_ratios.length; x++){
        //    outlet(0, "Beat nr.",x+1,"duration (ms):", global_beat_durations[x]);
        //    outlet(0, "note onset ratios (%):", global_onset_ratios[x]);
        //    outlet(0, "note duration ratios (%):", global_dur_ratios[x]);
        //    outlet(0, "-----------------------------------");
        //}
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
        hf_dict.replace(global_filename+"::total_bar_number", (global_beat_durations.length / global_beats_per_bar));
        hf_dict.replace(global_filename+"::beats_per_bar", global_beats_per_bar);
        hf_dict.replace(global_filename+"::total_duration_ms", (global_data[global_data.length-1][global_data_offset_idx] - global_data[0][global_data_onset_idx])*1000);

        // we go "through" every beat.
        for (var i=0; i<global_marker_tags.length; i++) {

            // create the tag for all keys
            var tag = global_marker_tags[i][2] + (global_marker_tags[i][3]/10);
            var str_tag = "beat" + tag;

            // add the note_onset_ratios
            var key = global_filename+"::note_onset_ratio::";
            for (var y=0; y<global_onset_ratios[i].length; y++) {
                hf_dict.append(key+str_tag, global_onset_ratios[i][y]);
            }

            // add the note_onset_ratios
            key = global_filename+"::note_duration_ratio::";
            for (var w=0; w<global_dur_ratios[i].length; w++) {
                hf_dict.append(key+str_tag, global_dur_ratios[i][w]);
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