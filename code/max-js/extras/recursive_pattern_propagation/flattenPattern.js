
autowatch = 1;
inlets = 1;
outlets = 1;

var p = [[ 1, 3, 4, 6 ],
         [ 7, 11, 12, 16],
         [ 17, 18, 19, 20],
         [ 1, 1, 4, 4, 7, 7, 12, 12],
         [ 2, 3, 5, 6, 10, 11, 15, 16],
         [ 17, 17, 19, 19, 21, 21, 23, 23],
         [ 21, 22, 23, 24],
         [ 8, 11, 13, 16],
         [ 3, 3, 6, 6, 11, 11, 16, 16],
         [ 3, 4, 15, 16] ];

var beatlevel_p = new Array();
var beatsPerBar = 3;


// flattend the patterns list to 1d (beat level).
function flattenPatterns() {
    beatlevel_p = new Array();
    var newValue;
    p.forEach(function(elem1, i1) {
        beatlevel_p[i1] = new Array();
        elem1.forEach(function(elem2, i2) {
            if (i2%2 == 0) {
                // we are at a starting beat.
                newValue = ((elem2-1) * beatsPerBar) + 1;
            } else {
                // we are at a closing beat.
                newValue = elem2 * beatsPerBar;
            }
            beatlevel_p[i1][i2] = newValue;
        });
    });
}   