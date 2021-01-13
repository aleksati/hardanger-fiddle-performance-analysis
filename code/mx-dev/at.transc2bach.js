autowatch = 1;
inlets = 1;
outlets = 3;

// Convert the MIRAGE transcriptions into [bach.roll] supported notation:
// onset(ms)
// duration(ms)
// pitch(cent)
// global_marker_tags(barlines for every beat).
// Color for ornametation?

// outlet 1 = to [bach.roll]
// outlet 2 = to Coll for data viewing
// outlet 3 = init message to calcRatio and bach2onsets.

// Global variables:
global_data = new Array(); // [ [onset, offset, pitch, bar, numerator, denominator, ornament] ]

// lookup table to keep track of the bar-numerator-denominator combos in the global_data.
var data_hashTable = {};

global_data_onset_idx = 0;
global_data_offset_idx = 1;
global_data_pitch_idx = 2;
global_data_bar_idx = 3;
global_data_numer_idx = 4;
global_data_denom_idx = 5;
global_data_orna_idx = 6;

global_beats_per_bar = 3;

// Used in [at.bach2onset.js]:
global_marker_tags = new Array();
global_note_durations = new Array();

// a bool that identifies if the ratio_init function has been called in the [at.calcRatios.js].
global_calcratio_init = false;
// a bool that identifies if the marker_init function has been called in the [at.bach2onset.js].
global_bach2onset_init = false;

// import csv to Coll and Data variable (array).
function csv(filename) {
	global_data = new Array();
	data_hashTable = {};
	var f = new File(filename);
	
	if (f.open) {		
		while (f.position < f.eof) {
			// read line
			var str = f.readline();	
			// convert strings to array (of symbols) (elements are delimited by a comma)
			var line = str.split(",");
			
			// convert the symbols (string numbers) into actual numbers.
			var numb_line = new Array();
			for (var i = 0; i < line.length; i++) {
				numb_line.push(parseFloat(line[i]));
			};
			
			// We skip onramentations for now. So only care about NaN and 0.
			if ((numb_line[global_data_orna_idx] != numb_line[global_data_orna_idx]) || (numb_line[global_data_orna_idx] == 0)) {
				// every row (that is not an ornamentation) should have an unique bar-numerator-denominator combo. 
				// if we have seen the same bar-numerator-denominator combo before, we therefore edit a little.
				if (!checkList(numb_line)) {
					numb_line[global_data_numer_idx] = 0;
					numb_line[global_data_denom_idx] = 0;
				}
				// store the line as a row in the global_data.
				global_data = global_data.concat([numb_line]);
			}
		}
		f.close();
		// store the data in a Coll for jit.cellblock viewing
		outlet(1, "clear");
		for (var i=0; i<global_data.length; i++) {
			outlet(1, i, global_data[i]);
		}
	} else {
		error("couldn't find the file ("+ filename +")\n");
	}
}

// Checks previous occurances of bar-numerator-denominator combos in global_data.
function checkList(input) {
    var a = input[global_data_bar_idx];
    var b = input[global_data_numer_idx];
    var c = input[global_data_denom_idx];

    // return if we’ve seen these entries before
    if (data_hashTable[a] && data_hashTable[a][b] && data_hashTable[a][b][c]) {
        return false;
    }

    // check first entry to the hash table
    if (!data_hashTable[a]) {
        data_hashTable[a] = {};
    }

    // check second entry to the hash table
    if (!data_hashTable[a][b]) {
        data_hashTable[a][b] = {};
    }

    // add third entry as true.
    data_hashTable[a][b][c] = true;

    // add the full input to the data array
    return true;
}


// Convert the data into bach-readable data and send out to [bach.roll].
// Also init other js files.
// ADD SUPPORT FOR ORNAMETATIONS. THEY SHOULD BE IN DIFFERENT COLOR, OR SOMETHING..
function mir2bach() {
	var onsets = new Array();
	var pitches = new Array();
	global_calcratio_init = false;
	global_bach2onset_init = false;
	global_marker_tags = new Array();
	global_note_durations = new Array();

	//collect the data in the variables declared above. IGNORE ornamentations
	for(var i=0; i<global_data.length;i++) {
		// onsets. in miliseconds
		onsets.push(Math.floor(global_data[i][global_data_onset_idx]*1000));

		// global_note_durations. in miliseconds
		global_note_durations.push(Math.floor(global_data[i][global_data_offset_idx]*1000)-onsets[i]);

		// pitches = Frequency to MIDI cents. Round to nearest int cent.
		//pitches.push(data[i][global_data_pitch_idx]*100);
		pitches.push(midi2hz2cent(global_data[i][global_data_pitch_idx]));

		// beat onsets = global_marker_tags
		// if the denominator in the global_data is equal to the number of beats per bar.
		// we know the note is a "metric anchor", so we have a marker here.
		// global_marker_tags are stored with ["addmaker", note-onset, bar-num, beat-num]
		if (global_data[i][global_data_denom_idx] == global_beats_per_bar) {
			global_marker_tags.push([
				"addmarker",
				onsets[i],
				global_data[i][global_data_bar_idx],
				global_data[i][global_data_numer_idx]]);
		}
	}

	// finally we add an ending marker...????

	
	// set the [bach.roll] domain to score length.
	this.patcher.getnamed(
		"curr_domain").message(
			"domain", 
			global_data[0][global_data_onset_idx]*1000,
			global_data[global_data.length-1][global_data_offset_idx]*1000);
	
	
	//output data to [bach.roll]
	outlet(0, "clear");
	outlet(0, "onsets", onsets);
	outlet(0, "cents", pitches);
	outlet(0, "durations", global_note_durations);
	outlet(0, "bang");

	for(var i=0; i<global_marker_tags.length; i++) {
		outlet(0,"markers", global_marker_tags[i]);
	}

	//send init message to other js files; init function in [bach2onset.js] and [calcRatios.js]
	outlet(2, "init");
}


// we assume the midi note from mirage transc has 440hz (at m note 69) as reference.
// bach library converts pitch to cents with C4 (262hz) as reference. Which is == to 6000 cents.
function midi2hz2cent(mir_midi) {
	var bach_freq_ref = 262;
	var bach_cent_ref = 6000;
	var hz = Math.pow(2, (mir_midi-69)/12)*440;
	var cent = bach_cent_ref+(1200 * (Math.log(hz/bach_freq_ref)/Math.log(2)));
	return cent;
}