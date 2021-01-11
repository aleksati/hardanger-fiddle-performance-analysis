autowatch = 1;
inlets = 1;
outlets = 1;

//var testing = [[1, 2, 3, 4],[5, 6, 7, 8],[9, 10, 11, 12]];
var testing = 3;


function bang() {
    
    if ([1,2,5].indexOf(testing) > -1) {

        outlet(0, "inside");

    } else {
        outlet(0, "outside");
    }
}