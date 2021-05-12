autowatch = 1;
inlets = 1;
outlets = 1;

var ratios = new Array();
var list_length = 50;


function gen() {
    ratios = new Array();
    for (var i=0; i<list_length; i++) {
        ratios.push(Math.random()*100);
    }
    outlet(0, ratios);
}


function scale(item, scale_factor) {
    if (scale_factor > 0) {
        var rest = item%scale_factor;
        if (rest <= (scale_factor/2)) { 
            if (item-rest == 0) {
                return 1;
            } else {
                return item-rest;
            }
        } else {
            return (item+scale_factor)-rest;
        }
    } else {
        return item;
    }
}


function msg_int(i) {
    var scaled_ratios = new Array();
    for (var x=0; x<ratios.length; x++) {
        scaled_ratios.push(scale(ratios[x], i));
    }
    outlet(0, scaled_ratios);
}