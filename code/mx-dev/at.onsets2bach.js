autowatch = 1;
inlets = 1;
outlets = 1;

// Recreates note Onsets-and Durations from the new beat onsets (ms) supplied from [at.bach2onset.js].
// We calculate these new note onsets-and durations based on the ratios collected [at.calcRatios.js]

// We ALSO update the [track_data] dict with new beat onsets and durations.

// global variables in use:
// global_onset_ratioss
// global_dur_ratios
// global_beat_durations
// global_calcratio_init
// global_bach2onset_init

function recreateOD() {
    if (global_calcratio_init && global_bach2onset_init) {
        global_beat_durations = new Array(); //in ms
        var new_beat_onsets = arrayfromargs(arguments);

        var new_note_onsets = new Array(); 
        var new_note_durs = new Array();
    
        if (new_beat_onsets.length == global_onset_ratios.length+1) {
    
            // Calc the difference between each subsequent beat onsets and update the global_beat_durations with these new beat durations.
            for (var x=0; x<new_beat_onsets.length-1; x++) {
                global_beat_durations.push(new_beat_onsets[x+1] - new_beat_onsets[x]);
            }

            // Create new note Onsets-and Durations based on the input of the new beat onsets and the ratios from [calcRatios.js].
            // iterate over every beat
            for (var i=0; i<global_beat_durations.length; i++) {
                // iterate over every item in every beat.
                for (var y=0; y<global_onset_ratios[i].length; y++) {
                    // collect the new note onsets and durations.
                    new_note_durs.push((global_dur_ratios[i][y]/100) * global_beat_durations[i]);
                    new_note_onsets.push(((global_onset_ratios[i][y]/100) * global_beat_durations[i]) + new_beat_onsets[i]);
                }
            }
    
            // send the info to bach.roll via the main [route] object.
            outlet(0, "durations", new_note_durs);
            outlet(0, "onsets", new_note_onsets);
            outlet(0, "bang");

            // lastly, we update the [dict @name track_data] with the new beat onsets and durations.
            // code from [calcRatios.js].
            var hf_dict = new Dict("track_data");
            hf_dict.remove("hf_tune::beat_onset_and_duration");
            for (var w=0; w<global_marker_tags.length; w++) {

                // create the tag for all keys
                var tag = global_marker_tags[w][2] + (global_marker_tags[w][3]/10);
                var str_tag = "beat" + tag;

                // add the BEAT onset (ms) and duration.
                var key = "hf_tune::beat_onset_and_duration::";
                // add the onset
                hf_dict.append(key+str_tag, new_beat_onsets[w]);
                // add the duration
                hf_dict.append(key+str_tag, global_beat_durations[w]);
            }

        } else {
            error("The size of the beat onset input list does not match the onset and duration ratio size..")
            return;
        }
    } else {
        error("Init error (ratioTransform). The [mir2bach] function has not been called yet..?");
    }
}