autowatch = 1;
inlets = 1;
outlets = 1;

//var input_array = new Array();
//var input_array = 3;

function bang() {

    // create a new dictionary
    //var jada_dict = new Dict("jada");

    //jada_dict.set("hf_tune");
    //jada_dict.append("hf_tune::beat_onset_duration::note", input_array[0]);
    //jada_dict.append("hf_tune::beat_onset_duration::note", arr2);

 
    //if ([1,2,5].indexOf(input_array) > -1) {
//
    //    outlet(0, "inside");
//
    //} else {
    //    outlet(0, "outside");
    //}

    //var obj = this.patcher.getnamed("hf_filename");
    ////outlet(0, obj.name);
//
    //listMethods(obj);
    //listProps(obj);
}

function an_array() {
    var test = arrayfromargs(arguments);
    var sum = test.reduce(function(a, b){
        return a + b;
    }, 0);

    outlet(0, sum);


    global_beat_durations.reduce(function(a,b){
        return a+b;
    }, 0)

}