autowatch = 1;
inlets = 1;
outlets = 1;


var data = new Array();
var new_data = new Array();

function list() {
    data = arrayfromargs(arguments);
    
    for(var i=0; i<data.length; i++) {
		outlet(0, data[i]);
	};
}