autowatch = 1;
inlets = 1;
outlets = 3;

// Convert the MIRAGE transcriptions into [bach.roll] supported notation:
// onset(ms)
// duration(ms)
// pitch(cent)
// markers(barlines for every beat).
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

// Local variables
// Bach library converts pitch to cents with C4 (262hz) as reference. Which is == to 6000 cents.
var bach_freq_ref = 262;
var bach_cent_ref = 6000;


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


//function export_data() {
//	outlet(3, data);
//};

//convert the data into bach-readable data and send out to [bach.roll]
// ADD SUPPORT FOR ORNAMETATIONS. THEY SHOULD BE IN DIFFERENT COLOR, OR SOMETHING..
function mir2bach() {
	var onsets = [];
	var durations = [];
	var pitches = [];
	var markers = new Array();

	//collect the data in the variables declared above.
	for(var i=0; i<data.length;i++) {
		
		// onsets. in miliseconds
		onsets.push(Math.floor(data[i][data_onset_idx]*1000));

		// durations. in miliseconds
		durations.push(Math.floor(data[i][data_offset_idx]*1000)-onsets[i]);

		// pitches = Frequency to MIDI cents. Round to nearest int cent.
		// see freq-cent-calculator.js for more info 
		pitches.push(Math.round(bach_cent_ref+(1200 * (Math.log(data[i][data_pitch_idx]/bach_freq_ref)/Math.log(2)))));

		// beat markers
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

	//output data to [bach.roll]
	outlet(0, "onsets", onsets);
	outlet(0, "cents", pitches);
	outlet(0, "durations", durations);
	outlet(0, "bang");

	for(var i=0; i<markers.length; i++) {
		outlet(0,"markers", markers[i]);
	};

	//send data to ... for further processing.

};




function print_data() {
	// print the input data as array
	for(var i = 0; i < data.length; i++) {
		outlet(0, data[i]);
	};
	//print a cell
	//outlet(0, data[1][2]);
};

function testing_func() {

	// create the output dict.
	//d.append("midi::ratio::measure::1",[[1, 2, 3]]);
	//d.append("midi::ratio::measure::1",[4, 5, 6]);
	test[2] = new Array();
	test[2][1] = [25, 26, 27];
	post(test[2][1][0]);
};


//function list() {
//	// collect the data and put in array
//	var input = arrayfromargs(arguments);
//	data = data.concat([input]);
//};