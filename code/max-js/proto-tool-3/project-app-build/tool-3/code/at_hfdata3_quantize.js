// Takes desired ratios (3) and quantizes ALL beat onsets in the score to these desired ratios.
// Outputs new marker positions to bach.roll.
// then dumps the markers to hfdata processing.

autowatch = 1;
inlets = 1;
outlets = 1;


function avgratio() {
    if (global_bach2onset_init) {
        var avg_br = arrayfromargs(arguments);
        if (avg_br.reduce(function(a,b){ return a+b; }, 0) == 100) {
            var qOnsets = new Array();

            var firstOnset = global_markers[0][1];
            var numbBeats = global_markers.length-1;
            var totDur = global_markers[global_markers.length-1][1] - firstOnset;
            // every measure has equal ms length
            var barDurMs = totDur / (numbBeats/global_beats_per_bar); 
            
            // initalize with the first beat onset
            qOnsets.push(Math.floor(firstOnset*100)/100);
            for (var i=0; i<numbBeats; i++) {
                // iterate over our input
                var curr_ratio = avg_br[i%avg_br.length];
                // find the value of the curr_ratio in barDurMs. 
                var curr_beatDur = (curr_ratio/100) * barDurMs;
                // add a new onset by adding the duration to the previous onset.
                // and, I am adding the last beat as well. 
                var newOnset = Math.floor((curr_beatDur + qOnsets[qOnsets.length-1]) * 100)/100;
                qOnsets.push(newOnset);
            }

            // update markers in bach.roll
            for (var x=0; x<qOnsets.length; x++) {
                outlet(0, "sel marker "+(x+1));
                outlet(0, "onset "+qOnsets[x]);
                outlet(0, "clearselection");
            }
            // dump markers for hfdata processing.
            outlet(0, "getmarker @namefirst 1");

        } else {
            error("hfdata3_quantize -- ratios have to be equal 100!");
        }
    }
}