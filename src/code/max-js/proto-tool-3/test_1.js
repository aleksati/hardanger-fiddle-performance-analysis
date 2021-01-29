autowatch = 1;
inlets = 1;
outlets = 1;

var velo = new Array();

function list() {
    var lst1 = arrayfromargs(arguments);
    velo.push(lst1.map(function() {
        return Math.round((Math.random()*87)+40);
    }));
    outlet(0, velo);
}