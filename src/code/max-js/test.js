autowatch = 1;
inlets = 1;
outlets = 2;

var patterns = new Array();

patterns[0] = [1, 3, 4, 6];
patterns[1] = [7, 11, 12, 16];
patterns[2] = [1, 1, 4, 4, 7, 7, 12, 12];
patterns[3] = [2, 3, 5, 6, 10, 11, 15, 16];
patterns[4] = [8, 11, 13, 16];
patterns[5] = [3, 3, 6, 6, 11, 11, 16, 16];


function list_fill(bar1, bar2) {
    var inp_list = new Array(bar1, bar2);
    var output = new Array();
    for (var i=0; i<inp_list.length; i++) {
        if (i != (inp_list.length-1)) {
            var count = inp_list[0];
            while (count <= inp_list[1]) {
                output.push(count);
                count +=1;
            }
        }
    }
    outlet(0, output);
}


function list() {
    var inn = arrayfromargs(arguments);
    var inn2 = inn.splice(2, 1); 
    outlet(0, "inn1", inn);
    outlet(0, "inn2", inn2);
}

function msg_float(f) {

    if (f%2==0) {
        outlet(0, "even");
    } else {
        outlet(0, "not-even");
    }
}


function bar2dictdata(from, to) {
    if (patterns.length) {
        var found_pattern = new Array();

        // We search the patterns in the "from" and "to" bar-input.
        for (var i=0; i<patterns.length; i++) {
            var from_idx = 0;
            var to_idx = 0;
            var curr_pattern = patterns[i].slice();

            if (curr_pattern.indexOf(from) != -1) {
                from_idx = curr_pattern.indexOf(from);

                //the "from" index has to be even (0-based).
                if (from_idx%2 == 0) {
                    curr_pattern.splice(from_idx, 1);

                    if (curr_pattern.indexOf(to) != -1) {
                        to_idx = curr_pattern.indexOf(to);
                        
                        // now that we have removed the "from" index. The "to" index also has to be even.
                        if (to_idx%2 == 0) {
                            if (to_idx == from_idx) {  
                                found_pattern = patterns[i];
                                outlet(0, "Pattern found!");
                                outlet(0, found_pattern);
                                break;
                            }
                        }
                    }
                }
            }
        }

        if (!found_pattern.length) {
            outlet(0, "no pattern found..");
        }
    }
}