autowatch = 1;
inlets = 1;
outlets = 1;

// global variables in use:
// global_onset_ratios
// global_dur_ratios
// global_calcratio_init
// global_marker2onset_init

// maybe here we can pass a list of the new beat onsets(ms) from [at.marker2onset.js] 
// and calculate new note onsets-and durations based on the ratios collected [at.calcRatios.js]
function recreateOD() {
    if (global_calcratio_init && global_marker2onset_init) {
        var new_beat_onsets = arrayfromargs(arguments);
        var new_beat_durs = new Array(); //in ms
        var new_note_onsets = new Array(); 
        var new_note_durs = new Array();
    
        if (new_beat_onsets.length == global_onset_ratios.length+1) {
    
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
                for (var y=0; y<global_onset_ratios[i].length; y++) {
    
                    // collect the new note onsets and durations.
                    new_note_durs.push((global_dur_ratios[i][y]/100) * new_beat_durs[i]);
                    new_note_onsets.push(((global_onset_ratios[i][y]/100) * new_beat_durs[i]) + new_beat_onsets[i]);
                    
                    // if we want to store it more "nicely", this will do.
                    //new_note_durs[i][y] = (global_dur_ratios[i][y]/100) * new_beat_durs[i];
                    //new_note_onsets[i][y] = ((global_onset_ratios[i][y]/100) * new_beat_durs[i]) + new_beat_onsets[i];
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