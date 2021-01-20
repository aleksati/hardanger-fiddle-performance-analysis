autowatch = 1;
inlets = 1;
outlets = 2;

// makes sure the pattern bar numbers are within the range of bars in the current [bach.roll] score.
function msg_float(x) {
    if (global_calcratio_init && global_bach2onset_init) {
	    if (x <= global_beat_ratios.length) {
	    	outlet(1, x);
	    	outlet(0, "bang");
        }
    } else {
        error("Init error (check_numb). The [mir2bach] function has not been called yet..?");
    }
}