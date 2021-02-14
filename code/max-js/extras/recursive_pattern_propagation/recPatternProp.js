// recursively propegates a change in one beat to all its motivic instances in the score.
// flattens the bar patterns to beat level
// treats every beat as a bar.. in a sense.

// to do:
// do the propper changes based on duration ratios.
// integrate in tool nr.2

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
         [ 3, 3, 6, 6, 11, 11, 16, 16]];

// [ 3, 4, 15, 16] spoof to check if recursion work.

var beatlevel_p = new Array();
var previousOnsets = new Array();
var hasBeenChangedGlobal = new Array();
var hasBeenChangedLocal = new Array();
var currentOnsets = new Array();
var beatsPerBar = 3;


// go through previous onsets and finds mismatches,
// If it has not already been processed, return the Idx.
function findMisMatch(list1, list2, changed) {
    for (var i=0; i<list1.length; i++) {
        if (list1[i] != list2[i]) {
            if (changed.some(function(item2) { return item2 == i; })) {
                // do nothing.
            } else {
                return i;
            }
        }
    }
}


// check if the current beat number is in a pattern, and where.
function findBarinPattern(barIdx, pattern) {
    var barPatternPos = new Array();
    for (var x=0; x<pattern.length; x+=2) {
        var count = pattern[x];
        while (count <= pattern[x+1]) {
            if (barIdx+1 == count) {
                // returns 
                // 0 = the first position 
                // 1 = the second position
                barPatternPos = new Array(x, count - pattern[x]);
                return barPatternPos;
            }
            count += 1;
        }
    }
    return barPatternPos;
}

// find the onsets to change, and calls to change them in:
// currentOnsets
function changeOnsets(pattern, barPatternPos, localChange, globalChange) {
    // pattern = which pattern instance.
    // barPatternPos:
    // 0 = the first position 
    // 1 = the second position
    // + list of bars NOT to change.

    var barsWeHaveChanged= new Array();
    // first, indentify the bar that is changed.
    var changedBar = pattern[barPatternPos[0]] + barPatternPos[1];
    // loop through the pattern instance.
    for (var i=0; i<pattern.length; i+=2) {
        // take a current instance of that pattern.
        var currentBar = pattern[i] + barPatternPos[1];
        // if its the inital changedBar, then skip. 
        // (it has already been changed, that why we are here in the first place.)
        // is to be stored in globalChange later.
        if (currentBar != changedBar) { 
            // if the step is NOT in the local change.
            if (localChange.indexOf(currentBar-1) == -1) {
                // if the step is NOT in the global change.
                if (globalChange.indexOf(currentBar-1) == -1) {
                    //just add 50 to the current onsets
                    currentOnsets[currentBar-1] += 50;
                    // add to barsWeHaveChanged.
                    barsWeHaveChanged.push(currentBar-1);
                }
            }
        } 
    }

    return barsWeHaveChanged;
}


function isInt(value) {
    return !isNaN(value) && 
           parseInt(Number(value)) == value && 
           !isNaN(parseInt(value, 10));
}

// main recursion
function rec(onsets) {
    // find mis-matches from the "template"
    var changedValuePos = findMisMatch(onsets, previousOnsets, hasBeenChangedGlobal);
    // if there is a(!) mis-match
    if (isInt(changedValuePos)) {
        // loop over all the patterns.
        for (var i=0; i<beatlevel_p.length; i++) {
            // check if the changed bar is in any of the patterns.
            var barPatternPos = findBarinPattern(changedValuePos, beatlevel_p[i]);
            // if we have found the changed bar in one of the patterns.
            if (barPatternPos.length) {
                // make changes to other bars in the pattern instance.
                var changedBars = changeOnsets(beatlevel_p[i], barPatternPos, hasBeenChangedLocal, hasBeenChangedGlobal);
                // if we make any changes to any other bars.
                if (changedBars.length) {
                    // add the newly changed bars to the hasBeenChangedLocal, so we dont change them again.
                    changedBars.forEach(function(elem) { hasBeenChangedLocal.push(elem); });
                }
            }
        }

        // add the inital change to globalChange variable
        hasBeenChangedGlobal.push(changedValuePos);

        // Call the function again.
        rec(currentOnsets);
    }

    // BASE CASE - 
    // if there are noe mismatches, meaning all mismatches have been added to the globalhasbeenchanged.
    return currentOnsets;
}


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

// reset the lookup array when a new beat array arrives.
function reset() {
    // produce 75 beat onsets..
    for (var i=1; i<76; i++) {
        previousOnsets.push(i*1000);
    }
    hasBeenChangedLocal = new Array();
    hasBeenChangedGlobal = new Array();
}

// main function
function main() {
    reset();
    flattenPatterns();
    currentOnsets = arrayfromargs(arguments);
    var outputOnsets = rec(currentOnsets);
    outlet(0, outputOnsets);
    //previousOnsets = outputOnsets;
}
