autowatch = 1;
inlets = 1;
outlets = 2;

// Takes the marker bump from [bach.roll] and creates a list with new beat/marker onsets.
// Requires messages [dump durations] and [getmarkers @namefirst 1] sending to first inlet, from BANGS out the last outlet of [bach.roll]

// global variables in use:
// global_marker_tags
// global_bach2onset_init


var reference_marker_tags; // 1D array = [1.1, 1.2, 1.3, 2.1, 2.2, etc..] as float numbers, mind you.

function bach2onset_init() {
    // add the marker_tags
    reference_marker_tags = new Array();
    for (var i=0; i<global_marker_tags.length; i++) {
        reference_marker_tags.push(global_marker_tags[i][2] + (global_marker_tags[i][3]/10));
    }

    global_bach2onset_init = true;
}


function markers() {
  if (global_bach2onset_init) {
    var new_marker_onsets = arrayfromargs(arguments); // input arguments include [ "[" marker tag, onset, none "]", --||--,  etc..]
    
    // remove the brackets and "none" from the new markers / beat onsets.
    for (var i=0; i<new_marker_onsets.length; i++) {
      if ((new_marker_onsets[i] == "[") || (new_marker_onsets[i] == "]")) {
        new_marker_onsets.splice(i, 1);
        i--;
      }
      if (new_marker_onsets[i] == "none") {
        new_marker_onsets.splice(i, 1);
        i--;
      }
    }
  
    // we split the marker tags (1.1 1.2 1.3 etc..) from the marker onsets.
    var curr_marker_tags = new Array();
    for (var x=0; x<new_marker_onsets.length; x+=2) {
      curr_marker_tags.push(new_marker_onsets[x]);
      new_marker_onsets.splice(x, 1);
      x--;
    }
  
    // now we check if the marker tags in the right order. If NOT, then we should update the marker names in bach.roll.
    if (curr_marker_tags.length == reference_marker_tags.length) {
      for (var y=0; y<curr_marker_tags.length; y++) {
        if (curr_marker_tags[y] != reference_marker_tags[y]) {
  
          // if these conditions are met, we redo the marker names to fit.
          outlet(1, reference_marker_tags);
        }
      }
    } else {
      error("Global and Current markers have different sizes ... ");
    }
    // output = [beat onset (ms), beat onset (ms), beat onset (ms) etc..]
    outlet(0, "recreateOD", new_marker_onsets);
  } else {
    error("Init error (bach2onsets). The [mir2bach] function has not been called yet..?");
  }
}