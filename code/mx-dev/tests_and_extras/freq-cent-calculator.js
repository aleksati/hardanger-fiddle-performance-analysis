inlets = 2;
outlets = 2;
autowatch = 1;


function cent2hz(cent) {
	var bach_freq_ref = 262;
	var bach_cent_ref = 6000;
	var freq = bach_freq_ref * Math.pow(2, ((cent-bach_cent_ref)/1200));
	outlet(0, freq, "Hz");
};

function hz2cent(freq) {
	var bach_freq_ref = 262;
	var bach_cent_ref = 6000;
	var cent = bach_cent_ref+(1200 * (Math.log(freq/bach_freq_ref)/Math.log(2)));
	outlet(1, cent, "Cent");
};