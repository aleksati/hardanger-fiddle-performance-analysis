autowatch = 1;
inlets = 1;
outlets = 1;

//var testing = [[1, 2, 3, 4],[5, 6, 7, 8],[9, 10, 11, 12]];
var testing = 3;


function bang() {

        // create a new dictionary
        var jada_dict = new Dict("jada");

        jada_dict.set("hf_tune");
        jada_dict.append("hf_tune::beat_onset_duration::note", 1);
        jada_dict.append("hf_tune::beat_onset_duration::note", 2);
 
    //if ([1,2,5].indexOf(testing) > -1) {
//
    //    outlet(0, "inside");
//
    //} else {
    //    outlet(0, "outside");
    //}
}

function get() {
    //var obj = this.patcher.getnamed("jada");
    var obj = new Dict("jada");

    obj.remove("hf_tune::beat_onset_duration::note");

    obj.append("hf_tune::beat_onset_duration::note", 3);
}
