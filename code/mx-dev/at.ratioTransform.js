autowatch = 1;
inlets = 1;
outlets = 2;

// Here the data consist of every event in a beat (pauses and notes!!!).
// That way, we can recreate onset&offsets via ratios (event percentages of total beat duration).


//var bar_column_idx = 2; 
//var beat_column_idx = 3;
//var beats_per_bar = 3;

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

//format is onset, offset, bar number, beat number
// data[0] = [0, 1.56, 1, 1];
// data[1] = [1.56, 1.9, 1, 1];
// data[2] = [1.9, 2.4, 1, 1];
// 
// data[3] = [2.4, 4.5, 1, 2];
// data[4] = [4.5, 5.1, 1, 2];
// data[5] = [5.1, 5.7, 1, 2];
// 
// data[6] = [5.7, 6.3, 1, 3];
// data[7] = [6.3, 6.5, 1, 3];
// 
// data[8] = [6.5, 7.0, 2, 1];
// data[9] = [7.0, 8.0, 2, 1];
// 
// data[10] = [8.0, 8.32, 2, 2];
// data[11] = [8.32, 8.9, 2, 2];
// data[12] = [8.9, 9.4, 2, 2];
// 
// data[13] = [9.4, 10.0, 2, 3];
// data[14] = [10.0, 10.3, 2, 3];

function calc_note_ratios() {

    // store the duration of every beat (ms) in the track. onset - onset
    var beat_dur_ms = new Array();
    // store the note duration percentages with respect to the duration (ms) of the associated beat. 
    var note_dur_perc = new Array();
    // store the note onset percentages with respect to the duration (ms) of the associated beat. 
    var note_onset_perc = new Array();

    // first, collect the beat durations (ms) of every beat in the track. 
    // add onsets of every 1st beat note to array.
    var temp_array = new Array();
    for (var y=0; y<data.length; y++) {
        if (data[y][data_denom_idx] == beats_per_bar) {
            temp_array.push(data[y][data_onset_idx]*1000); // in ms

            // we also need to add the last beat's offset as an "onset".
            if (y == data.length-1) {
                temp_array.push(data[y][data_offset_idx]*1000);
            };
        };
    };
    // calc the difference between each subsequent beat onsets and add the durations to beat_dur_ms.
    for (var q=0; q<temp_array.length-1; q++) {
        beat_dur_ms.push(temp_array[q+1] - temp_array[q]);
    };


    // next, collect the onset and duration percentages of every note based on the beat durations.
    var temp_data;
    var collec_bool = false;
    var curr_beat_number = 0;
    var curr_bar_number = 0;
    var total_num_bars = data[data.length-1][data_bar_idx];
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
                // we look at the denominator. If we find a 3, then we check if its the correct bar and beat before setting the collect bool to true.
                // if the row doesnt satisfy these conditions, we dont collect.
                if (data[x][data_denom_idx] == beats_per_bar) {
                    if ((data[x][data_bar_idx] == curr_bar_number) && (data[x][data_numer_idx] == curr_beat_number)) {
                        collec_bool = true;
                    } else {
                        collec_bool = false;
                    };
                };

                if (collec_bool) {
                    temp_data.push(data[x]);
                };
            };

            // print the temp data.. just to see.
            //for(var f=0; f<temp_data.length; f++){
            //    outlet(0, "data:",temp_data[f]);
            //};

            // collect onset percentages (the notes "position" in the bar) of each note with respect to the beat duration.
            temp_array = new Array();
            for (var z=0; z<temp_data.length; z++) {
                temp_array.push((((temp_data[z][data_onset_idx]-temp_data[0][data_onset_idx])*1000) / beat_dur_ms[j+(i*beats_per_bar)]) * 100);
            };
            note_onset_perc.push(temp_array);
            
            // collect duration percentage of each note with respect to the beat duration.
            temp_array = new Array();
            for (var w=0; w<temp_data.length; w++) {
                temp_array.push((((temp_data[w][data_offset_idx] - temp_data[w][data_onset_idx])*1000) / beat_dur_ms[j+(i*beats_per_bar)]) * 100);
            };
            note_dur_perc.push(temp_array);
        };
    };

    outlet(0, "Total duration of beats:", beat_dur_ms);
    
    for(var i=0; i<note_onset_perc.length; i++){
        outlet(0, "Onset-percentages/position:", note_onset_perc[i]);
    };

    for(var j=0; j<note_dur_perc.length; j++){
        outlet(0, "Duration percentages:", note_dur_perc[j]);
    };

    //outlet(0, "beat durations:", beat_dur_ms);

    // Now I need to find the first beat.. calc the durations and percentages, then move on. 

    //var beat_duration = data[data.length-1][1] - data[0][0];


    //Add each events duration percentage (relative to the total length) to a variable
    //for(var i=0; i < data.length; i++) {
    //    var event_length = data[i][1] - data[i][0];
    //    event_perc.push(Math.round(((event_length/beat_duration)*100)*100)/100); 
    //};

    //print the data
    //for(var i = 0; i < data.length; i++) {
    //    outlet(0, "stored data:", data[i]);
    //};
    //print the event_perc
    //outlet(0, "event percentages of total duration:", event_perc);
};



// maybe here we can pass beat durations..
// and calculate all the new note/event duration BASED ON the event percentages (ratios) collected. 
function recreate() {

    var recreated_data = new Array();
    var time = 0;
    var prev_time = 0;
    var inc_time = 0;

    for(var i=0; i<data.length; i++) {
        //set the element of array to a list.
        recreated_data[i] = [];

        // get the total duration of time for that event. 
        // calculate what event_perc[0]% is of the total length.
        time = (event_perc[i]/100) * beat_duration;

        // increment the time with the previous duration.
        inc_time = time + prev_time;

        //add the onset time and offset times of the events.
        recreated_data[i].push(Math.round((inc_time-time)*100)/100);
        recreated_data[i].push(Math.round(inc_time*100)/100);

        //update the previous duration variable.
        prev_time = inc_time; 
    };
    //print.. but should optimally just change the main data file.
    for(var i = 0; i < recreated_data.length; i++) {
        outlet(0,"recreated duration from event percentages of the total duration:", recreated_data[i]);
    };
};




