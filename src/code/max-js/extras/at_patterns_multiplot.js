autowatch = 1;
inlets = 1;

var p = this.patcher;
var parent = this.patcher.parentpatcher;
var plots_array = new Array();
var plot_count = 0;
var plot_data_tracker = 0;

// The patching rect format is [x, y, width, height]
var patching_rect = new Array(52.75, 302., 592., 345.);
if (jsarguments.length > 1) {
    for (var i=1; i<jsarguments.length; i++) {
        patching_rect[i-1] = jsarguments[i]; 
    }
}

// our plot objects
var plot_data = {
    vector: new Array("vector"),
    color: new Array("color", 0, 0, 0, 1),
    pgrid_x: new Array("grid_x"),
    pgrid_y: new Array("grid_y", 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100),
    pdomain: new Array(),
    set addData(a) {
        this.vector = this.vector.concat(a);
        for (var i=0; i<this.vector.length; i++) {
            this.pgrid_x.push(i+1);
        }
        this.pdomain.push("domain", 1, this.vector.length);
    },
    get reset() {
        this.vector = new Array("vector");
        this.color = new Array("color", 0, 0, 0, 1);
        this.pgrid_x = new Array("grid_x");
        this.pgrid_y = new Array("grid_y", 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100);
        this.pdomain = new Array();
    },
    get drawGraph() {
        // if it's the first data entry of a new bar-selection, we want to do some inital config on the first plot (grid).
        if (plot_data_tracker == 0) {
            plots_array[plot_data_tracker].message(this.pdomain);
            plots_array[plot_data_tracker].message(this.vector);
            plots_array[plot_data_tracker].message(this.pgrid_x);
            plots_array[plot_data_tracker].message(this.pgrid_y);
            plots_array[plot_data_tracker].message(this.color);
            plots_array[plot_data_tracker].message("bang");

        } else {
            plots_array[plot_data_tracker].message(this.vector);
            plots_array[plot_data_tracker].message(this.color);
            plots_array[plot_data_tracker].message("bang");
        }
    }
}; 


// add data to plots. format lists [vector data, color, color data]
function add_data() {
    if (plots_array.length) {
        if (plot_data_tracker < plot_count) {
            var input_data = arrayfromargs(arguments);
            plot_data.reset;
            // if we have color data at the end of our input.
            if (input_data.indexOf("color") != -1) {
                var vector_data = input_data.slice(0, input_data.indexOf("color"));
                var color_data = input_data.slice(input_data.indexOf("color"), input_data.length);
                plot_data.addData = vector_data;
                plot_data.color = color_data;
            } else {
               // if we dont have color data in the input.
                plot_data.addData = input_data;
            }
            plot_data.drawGraph;
            plot_data_tracker += 1;
        } else {
            error("We need to create more plots first..");
        }
    } else {
        error("Create some plots first..");
    }
}


// create some plots on top of each other.
function create_plots(amount) {
    if (!plots_array.length) {
        plot_count = 0;
        plot_data_tracker = 0;
        for (var x=0; x<amount; x++) {
            // initialize the jsui object
            plots_array[plot_count] = p.newdefault(
                patching_rect[0], patching_rect[1], 
                "jsui", 
                "@patching_rect", patching_rect);
            
            // set the modofied at_pattern_jsuiplot.js file to our jsui object.
            plots_array[plot_count].message("jsfile", "at_patterns_jsuiplot.js");
            
            // increment the plot_count
            plot_count += 1;
        }
    } else {
        error("To add more plots, clear current plots first..");
    }
}


// edit the style of our current plots.
function edit_plotstyle(plines, psymbol, pnumber, pthickness) {
    if (plots_array.length) {
        for (var x=0; x<plots_array.length; x++) {
            plots_array[x].message("lines", plines);
            plots_array[x].message("symbol", psymbol);
            plots_array[x].message("number", pnumber);
            plots_array[x].message("thickness", pthickness);
            plots_array[x].message("bang");
        }
    } else {
        error("No plots to style..");
    }
}


//clear the data in the plots_array.
function clear_all_data() {
    if (plots_array.length) {
        for (var i=0; i<plot_count; i++) {
            plots_array[i].message("clear");
        }
        plot_data_tracker = 0;
    } else {
        error("No plot data to clear..");
    }
}


//clear the plots_arrays.
function clear_all_plots() {
    if (plots_array.length) {
        for (var y=0; y<plot_count; y++) {
            p.remove(plots_array[y]);
        }
        plots_array = new Array();
        plot_count = 0;
        plot_data_tracker = 0;
    } else {
        error("No plots to clear..");
    }
}