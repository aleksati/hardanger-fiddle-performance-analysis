autowatch = 1;
inlets = 1;
outlets = 2;

// global variables declared in [at.transc2bach.js]
// data = new Array(); [ [onset, offset, pitch, bar, numerator, denominator, ornament] ]
// data_onset_idx = 0;
// data_offset_idx = 1;
// data_pitch_idx = 2;
// data_bar_idx = 3;
// data_numer_idx = 4;
// data_denom_idx = 5;
// data_orna_idx = 6;
// beats_per_bar = 3;

// store the duration of every beat (ms) in the track. onset to onset
beat_durs = new Array();
// store the note duration percentages with respect to the duration (ms) of the associated beat. 
dur_ratios = new Array();
// store the note onset percentages with respect to the duration (ms) of the associated beat. 
onset_ratios = new Array();

global_ratiotransform_init = false;

//calculate the beat durations, note duration and onset ratios. in %
function calc_ratios() {
    beat_durs = new Array();
    dur_ratios = new Array(); 
    onset_ratios = new Array();
    var temp_array = new Array();

    // first, collect the beat durations (ms) of every beat in the track by adding onsets of every 1st beat note to array.
    for (var y=0; y<data.length; y++) {
        if (data[y][data_denom_idx] == beats_per_bar) {
            temp_array.push(data[y][data_onset_idx]*1000); // in ms
        }
        // we also need to add the last beat's offset as an "onset".
        if (y == data.length-1) {
            temp_array.push(data[y][data_offset_idx]*1000);
        }
    }
    // calc the difference between each subsequent beat onsets and add the durations to beat_durs.
    for (var q=0; q<temp_array.length-1; q++) {
        beat_durs.push(temp_array[q+1] - temp_array[q]);
    }


    // next, collect the onset and duration percentages of every note with respect to their associated beat's duration.
    var temp_data;
    var collec_bool = false;
    var curr_beat_number = 0;
    var curr_bar_number = 0;
    var total_num_bars = beat_durs.length / beats_per_bar //data[data.length-1][data_bar_idx];

    // iterate over the number of bars.
    for(var i=0; i<total_num_bars; i++) {
        // set the current bar number
        curr_bar_number = i+1;
        //outlet(0, "bar number:", curr_bar_number);

        // iterate over the number of beats
        for(var j=0; j<beats_per_bar; j++) {
            // set the current beat number
            curr_beat_number = j+1;
            //outlet(0, "beat number:", curr_beat_number);
            temp_data = new Array();

            // iterate over every row of the data and collect the desired rows (according to the current beat and bar number) for processing
            for(var x=0; x<data.length; x++) {
                // we look at the denominator. If we find a 3, then we check if its the correct bar and beat before setting the collect bool to true. if the row doesnt satisfy these conditions, we dont collect.
                if (data[x][data_denom_idx] == beats_per_bar) {
                    if ((data[x][data_bar_idx] == curr_bar_number) && (data[x][data_numer_idx] == curr_beat_number)) {
                        collec_bool = true;
                    } else {
                        collec_bool = false;
                    }
                }
                if (collec_bool) {
                    temp_data.push(data[x]);
                }
            }

            // collect onset percentages (the notes "position" in the bar) of each note with respect to the beat duration.
            temp_array = new Array();
            for (var z=0; z<temp_data.length; z++) {
                temp_array.push((((temp_data[z][data_onset_idx]-temp_data[0][data_onset_idx])*1000) / beat_durs[j+(i*beats_per_bar)]) * 100);
            }
            onset_ratios.push(temp_array);
            
            // collect duration percentage of each note with respect to the beat duration.
            temp_array = new Array();
            for (var w=0; w<temp_data.length; w++) {
                temp_array.push((((temp_data[w][data_offset_idx] - temp_data[w][data_onset_idx])*1000) / beat_durs[j+(i*beats_per_bar)]) * 100);
            }
            dur_ratios.push(temp_array);
        }
    }

    // print pretty to console :) 
    if (onset_ratios.length == dur_ratios.length) {
        global_ratiotransform_init = true;
        outlet(1, "Number of bars", total_num_bars);
        outlet(1, "-----------------------------------");
        for(var x=0; x<onset_ratios.length; x++){
            outlet(1, "Beat nr.",x+1,"duration (ms):", beat_durs[x]);
            outlet(1, "note onset ratios (%):", onset_ratios[x]);
            outlet(1, "note duration ratios (%):", dur_ratios[x]);
            outlet(1, "-----------------------------------");
        }
    } else {
        post("the duration and onset sizes do not match each other.. They should, so something is wrong..Try again..");
    }
}


// maybe here we can pass a list of the new beat onsets (in ms) and calculate new note-onsets and durations based on the ratios collected. 
function recreate_data() {
    if (global_ratiotransform_init && global_markertoonset_init) {
        var new_beat_onsets = arrayfromargs(arguments);
        var new_beat_durs = new Array(); //in ms
        var new_note_onsets = new Array(); 
        var new_note_durs = new Array();
    
        if (new_beat_onsets.length == onset_ratios.length+1) {
    
            // calc the difference between each subsequent beat onsets and add the durations to new_beat_durs.
            for (var x=0; x<new_beat_onsets.length-1; x++) {
                new_beat_durs.push(new_beat_onsets[x+1] - new_beat_onsets[x]);
            }
    
            // recreate new onsets and durations based on the input of the function and the ratios.
            // iterate over every beat
            for (var i=0; i<new_beat_durs.length; i++) {
                //new_note_durs[i] = new Array(); 
                //new_note_onsets[i] = new Array();
                // iterate over every item in every beat.
                for (var y=0; y<onset_ratios[i].length; y++) {
    
                    // collect the new note onsets and durations.
                    new_note_durs.push((dur_ratios[i][y]/100) * new_beat_durs[i]);
                    new_note_onsets.push(((onset_ratios[i][y]/100) * new_beat_durs[i]) + new_beat_onsets[i]);
                    
                    // if we want to store it more "nicely", this will do.
                    //new_note_durs[i][y] = (dur_ratios[i][y]/100) * new_beat_durs[i];
                    //new_note_onsets[i][y] = ((onset_ratios[i][y]/100) * new_beat_durs[i]) + new_beat_onsets[i];
                }
            }
    
            // send the info to route object.
            outlet(0, "durations", new_note_durs);
            outlet(0, "onsets", new_note_onsets);
            outlet(0, "bang");
    
            //for(var j=0; j<new_note_durs.length; j++){
            //    outlet(0, "new note durations:", new_note_durs[j]);
            //}
    
            //for(var j=0; j<new_note_onsets.length; j++){
            //    outlet(0, "new note onsets:", new_note_onsets[j]);
            //}
    
        } else {
            post("The size of the beat onset input list does not match the onset and duration ratio size..")
            return;
        }
    } else {
        post("Init error (ratioTransform). The [mir2bach] function has not been called yet..?");
    }
}