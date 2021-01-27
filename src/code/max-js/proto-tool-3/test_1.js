autowatch = 1;
inlets = 1;
outlets = 1;


var lst1 = new Array();
var lst2 = new Array();

declareattribute("lst1");
declareattribute("lst2");

function compare(list1, list2) {
    if (list1.length != list2.length) {
        return false;
    }
    for (var x=0; x<list1.length; x++) {
        if (list1[x] != list2[x]) {
            return false;
        }
    }
    return true;
}


function bang() {
    var b = compare(lst1, lst2);
    outlet(0, b);
}