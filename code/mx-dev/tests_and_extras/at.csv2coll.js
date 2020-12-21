inlets = 1;
outlets = 2;
autowatch = 1;


var data = new Array();

function csv(filename) {
	var f = new File(filename);
	
	if (f.open) {
		// Clear coll
		outlet(1, "clear");
		
		while (f.position < f.eof) {
			var str = f.readline();	
			var line = str.split(","); // convert strings to array (elements are delimited by a coma)
			// a[5] /= 1000; // uncomment to devide the 6th column by 1000
			
			// store in the coll
			outlet(1, "store", line);
			// store in the data array
			data = data.concat([line]);
		};
		f.close();
	} else {
		error("couldn't find the file ("+ filename +")\n");
	};

	for(var i=0; i<data.length; i++) {
		outlet(0, data[i]);
	};
};
