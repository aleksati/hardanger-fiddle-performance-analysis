autowatch = 1;
inlets = 1;
outlets = 3;

// Convert the MIRAGE transcriptions into [bach.roll] supported notation:
// onset(ms)
// duration(ms)
// pitch(cent)
// marker_tags(barlines for every beat).
// Color for ornametation

// outlet 1 = to [bach.roll]
// outlet 2 = to Coll for data viewing

// Global variables
data = new Array();
// [ [onset, offset, pitch, bar, numerator, denominator, ornament] ]

data_onset_idx = 0;
data_offset_idx = 1;
data_pitch_idx = 2;
data_bar_idx = 3;
data_numer_idx = 4;
data_denom_idx = 5;
data_orna_idx = 6;
beats_per_bar = 3;

// I use these two variable in [at.marker2onset.js]
marker_tags = new Array();
durations = new Array();


// import csv to Coll and Data variable (array).
function csv(filename) {
	data = new Array();
	var f = new File(filename);
	
	if (f.open) {
		// Clear coll
		outlet(1, "clear");
		
		while (f.position < f.eof) {
			var str = f.readline();	
			// convert strings to array (elements are delimited by a comma)
			var line = str.split(",");
			
			// store in the coll for jit.cellblock
			outlet(1, "store", line);
			
			// convert the string numbers into actual numbers.
			var numb_line = new Array();
			for (var i = 0; i < line.length; i++) {
				numb_line.push(parseFloat(line[i]));
			};
			
			// store in the data array
			data = data.concat([numb_line]);
		};
		f.close();
	} else {
		error("couldn't find the file ("+ filename +")\n");
	};
};


//convert the data into bach-readable data and send out to [bach.roll]
// ADD SUPPORT FOR ORNAMETATIONS. THEY SHOULD BE IN DIFFERENT COLOR, OR SOMETHING..
function mir2bach() {
	var onsets = new Array();
	var pitches = new Array();
	marker_tags = new Array();
	durations = new Array();

	//collect the data in the variables declared above.
	for(var i=0; i<data.length;i++) {
		
		// onsets. in miliseconds
		onsets.push(Math.floor(data[i][data_onset_idx]*1000));

		// durations. in miliseconds
		durations.push(Math.floor(data[i][data_offset_idx]*1000)-onsets[i]);

		// pitches = Frequency to MIDI cents. Round to nearest int cent.
		//pitches.push(data[i][data_pitch_idx]*100);
		pitches.push(midi2hz2cent(data[i][data_pitch_idx]));

		// beat marker_tags
		// if the denominator in the data is equal to the number of beats per bar.
		// we know the note is a "metric anchor", so we have a marker here.
		// marker_tags are stored with ["addmaker", note-onset, bar-num, beat-num]
		if (data[i][data_denom_idx] == beats_per_bar) {
			marker_tags.push([
				"addmarker",
				onsets[i],
				data[i][data_bar_idx],
				data[i][data_numer_idx]]);
		}
	}

	// finally we add an ending marker.

	//output data to [bach.roll]
	outlet(0, "clear");
	outlet(0, "onsets", onsets);
	outlet(0, "cents", pitches);
	outlet(0, "durations", durations);
	outlet(0, "bang");

	for(var i=0; i<marker_tags.length; i++) {
		outlet(0,"markers", marker_tags[i]);
	}

	//send init message to other js files; init function in [marker2onset.js] and calc_ratios in [ratioTransform.js]
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
};



function print_data() {
	// print the input data as array
	for(var i = 0; i < data.length; i++) {
		outlet(0, data[i]);
	};
	//print a cell
	//outlet(0, data[1][2]);
};