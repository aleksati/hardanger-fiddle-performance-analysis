autowatch = 1;
inlets = 1;
outlets = 1;

// Convert the MIRAGE transcriptions into [bach.roll] supported notation:
// onset(ms)
// duration(ms)
// pitch(cent)
// markers(barlines for every beat).

// Data format:
// [[onset, offset, pitch, bar, numerator, denominator] ]
var data = new Array();

var data_onset_idx = 0;
var data_offset_idx = 1;
var data_pitch_idx = 2;
var data_bar_idx = 3;
var data_numer_idx = 4;
var data_denom_idx = 5;

var beats_per_bar = 3;

function list() {
	// collect the data and put in an array
	var input = arrayfromargs(arguments);
	data = data.concat([input]);
};

function print_data() {
	// print the input data as array
	for(var i = 0; i < data.length; i++) {
		outlet(0, data[i]);
	};
	//print a cell
	//outlet(0, data[1][2]);
};


function mir2bach() {
	//convert the input data into bach-readable data.
	var onsets = [];
	var durations = [];
	var pitches = [];
	var markers = new Array();

	//collect the data in the variables above.
	for(var i=0; i<data.length;i++) {
		
		//onsets. in miliseconds
		onsets.push(Math.floor(data[i][data_onset_idx]*1000));

		//durations. in miliseconds
		durations.push(Math.floor(data[i][data_offset_idx]*1000)-onsets[i]);


		//pitches = Frequency to MIDI cents


		//beat markers
		// if the denominator in the data is equal to the number of beats per bar.
		// we know the note is a "metric anchor", so we have a marker here.
		// markers are stored with ["addmaker", note-onset, bar-num, beat-num]
		if (data[i][data_denom_idx] == beats_per_bar) {
			markers.push([
				"addmarker",
				onsets[i],
				data[i][data_bar_idx],
				data[i][data_numer_idx]]);
		};
	};

	outlet(0, "onset", onsets);
	outlet(0, "duration:", durations);

};



function testing_func() {

	// create the output dict.
	//d.append("midi::ratio::measure::1",[[1, 2, 3]]);
	//d.append("midi::ratio::measure::1",[4, 5, 6]);
	test[2] = new Array();
	test[2][1] = [25, 26, 27];
	post(test[2][1][0]);
};
