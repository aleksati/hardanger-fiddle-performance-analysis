autowatch = 1;
inlets = 1;
outlets = 1;


function hello() {
    var test1 = arrayfromargs(arguments);
    test1[1] = 5;
    outlet(0, test1);
}