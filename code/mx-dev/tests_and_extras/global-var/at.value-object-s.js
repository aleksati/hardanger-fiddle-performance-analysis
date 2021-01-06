autowatch = 1;
inlets = 1;
outlets = 1;


global_var = new Array();

function list() {
    lst = arrayfromargs(arguments);
    global_var = global_var.concat([lst]);
}

function clear() {
    global_var = new Array();
}