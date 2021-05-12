inlets = 3;
outlets = 3;
autowatch = 1;

var bach_freq_ref = 262;
var bach_cent_ref = 6000;

function cent2hz(cent) {
	var freq = bach_freq_ref * Math.pow(2, ((cent-bach_cent_ref)/1200));
	outlet(0, freq, "Hz");
};

function hz2cent(freq) {
	var cent = bach_cent_ref+(1200 * (Math.log(freq/bach_freq_ref)/Math.log(2)));
	outlet(1, cent, "Cent");
};

//we assume the midi note has 440hz (at m note 69) as reference.
function midi2hz2cent(midi) {
	var hz = Math.pow(2, (midi-69)/12)*440;
	hz2cent(hz);
};