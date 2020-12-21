inlets = 1;
outlets = 1;
autowatch = 1;


function calc(freq) {
	var bach_freq_ref = 262;
	var bach_cent_ref = 6000;

	var cent = bach_cent_ref+(1200 * (Math.log(freq/bach_freq_ref)/Math.log(2)));

	// the inverse function:
	// var freq = 262 * Math.pow(2, ((cent-6000)/1200));

	outlet(0, cent);
}; 