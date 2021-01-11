autowatch = 1;
inlets = 1;
outlets = 2;

// Takes the markers and duration bump from bach.roll and creates a list with new marker onsets.
// Needs the durations to set the last item of the list which is the duration of the last beat.
// Needs to have messages [dump durations] and [getmarkers @namefirst 1] sending to first inlet, from bangs from last outlet.

// global variables in use:
// global_marker_tags ["addmarker", beat onset (ms), marker tag bar, marker tag beat]
// global_note_durations -- all the note durations in the track. (ms)
// global_marker2onset_init = false;

// local
var new_note_dur;
var reference_marker_tags;


// message recieved from [transc2bach.js] after calling the mir2bach function.
function marker_init() {

  // add the marker_tags (1.1 1.2 1.3 2.1 2.2 etc..) to local variable.
  reference_marker_tags = new Array();
  for (var i=0; i<global_marker_tags.length; i++) {
    reference_marker_tags.push(global_marker_tags[i][2] + (global_marker_tags[i][3]/10));
  }

  // initalize the note durations with the global durations.
  new_note_dur = global_note_durations;
  global_marker2onset_init = true;
}


// clean the marker list coming from bach.roll.
// arguments include ["[" tag, duration, none "]" etc..]
function markers() {
  if (global_marker2onset_init) {
    var new_marker_onsets = arrayfromargs(arguments);

    // remove the brackets and "none" from the new markers / beat onsets.
    for (var i=0; i<new_marker_onsets.length; i++) {
      if ((new_marker_onsets[i] == "[") || (new_marker_onsets[i] == "]")) {
        new_marker_onsets.splice(i, 1);
        i--;
      }
      if ((new_marker_onsets[i] == "none") || (new_marker_onsets[i] == "none")) {
        new_marker_onsets.splice(i, 1);
        i--;
      }
    }
  
    // we split the current marker tags (1.1 1.2 1.3 etc..) from the new_marker_onsets variable.
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
      post("Global and Current markers have different sizes ... ");
    }
  
    // Finally, add the last new note duration (ms) to the end of the new_marker_onsets list to get the last beat duration. and output.
    new_marker_onsets.push(new_marker_onsets[new_marker_onsets.length-1] + new_note_dur[new_note_dur.length-1]);
  
    outlet(0, new_marker_onsets);
  } else {
    post("Init error (marker2onsets). The [mir2bach] function has not been called yet..?");
  }
}



// Yes, I still need this, because if we want to squeeze the last bar (not implemented yet...) the last note duration might change?
function notedurations() {
  new_note_dur = arrayfromargs(arguments);
  // remove the brackets from the duration list
  for (var y=0; y<new_note_dur.length; y++) {
    if ((new_note_dur[y] == "[") || (new_note_dur[y] == "]")) {
      new_note_dur.splice(y, 1);
      y--;
    }
  }
}