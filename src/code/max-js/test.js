autowatch = 1;
inlets = 1;
outlets = 2;



function name(filename) {

    var test = filename.split("\\").pop().split("/").pop();
    var p = this.patcher.getnamed("hello_man");
    p.message(test);

    outlet(0, test);
}