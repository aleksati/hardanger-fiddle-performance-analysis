// A modified version of:
// plot.js -- a simplified and customizable version of the plot~ object in Max 6
// timothy place -- cycling '74


var vector = new Array();			// a vector of data to plot
var domain = [1.0, 4.0];
var domain_style = "linear";		// linear or log
var range = [0.0, 100.0];
var origin = [0.0, 0.0];			// the base-line for the domain and range
var	color = [0.4, 0.4, 0.75, 1.0];	// plot color
var thickness = 3;					// line width
var symbol = "dot";				// data point: none, circle, square, etc.
var lines = "origin";				// style: none, linear, curve, origin
var number = "above";				// style: none, above, below, center
var grid_x = new Array();
var grid_y = new Array();
var labels_x = new Array();
var labels_y = new Array();


declareattribute("vector");
declareattribute("grid_x");
declareattribute("grid_y");
declareattribute("symbol");
declareattribute("lines");
declareattribute("number");
declareattribute("color");
declareattribute("thickness");
declareattribute("domain");
//declareattribute("inputs", "getattr_inputs_obj", "setattr_inputs_obj", 1);


mgraphics.init();
mgraphics.autofill = 0;
mgraphics.relative_coords = 0;


function list() {
	vector = arguments;
	mgraphics.redraw();
}


function onclick(x,y) {
	mgraphics.redraw();
}


// Scale from Range or Domain to the Pixels of the JSUI. so Height og Width.
// From input in inlow, inhigh, convert to output in outlow, outhigh. 
function myscale(input, inlow, inhigh, outlow, outhigh) {
	var indiff = inhigh - inlow;
	var outdiff = outhigh - outlow;
	var inscale;
	var value;
	
	if (input == Number.NEGATIVE_INFINITY) {
	 	input = inlow * 1000000.0;
    } else if (input == Number.POSITIVE_INFINITY) {
	 	input = inhigh * 1000000.0;
    }    
	if (indiff != 0.0) {
		inscale = 1.0 / indiff;
    } else {
        inscale = 1.0;
    }
	value = (input - inlow) * inscale;
	return (value * outdiff) + outlow;
}

// vector er 20 20 20 40.
// input [vector.length, width of the box (688,6)]
// numpoints = 4
// pointspan = 172.1

// x (1.3) = index(4) / (numpoints-1) 3; 

// x_c = x(1.3) * (width (688.6) - pointspan/2 (86.05)) + pointspan/4(43)

// calculates where "index" is in "width". based on some params. we have set.
function calculate_x(index, width) {
	var	numpoints = vector.length;
	var	pointspan = width / numpoints;
	var	x;
	var	x_c;
	
	if (domain_style == "log") {
		var highest_index = numpoints;
		var log_highest_index = log(highest_index);
		var log_index = log(index+1); // can't do log(0)
		
		x = log_index / (log_highest_index);
	}
	else {
		x = (index) / (numpoints-1);
	}
	x_c = (x * (width - pointspan/2) + pointspan/4);
	return x_c;
}


function paint_grid() {
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	mgraphics.set_line_width(0.5);

	var size = grid_x.length;
	for (var m=0; m<size; m++) {
		var f = grid_x[m];		
		var norm = myscale(f, domain[0], domain[1], 0, vector.length-1);
		var x = calculate_x(norm, width);
		
		with (mgraphics) {
			if (x == origin[0])
				set_source_rgba(0.0, 0.0, 0.0, 1.0);
			else
				set_source_rgba(0.5, 0.5, 0.5, 1.0);

			move_to(x, 0);
			line_to(x, height);
			stroke();
		}
	}
		
	var size = grid_y.length;
	var x = calculate_x(0, width);
	var width = calculate_x(vector.length-1, width);
	for (var m=0; m<size; m++) {
		var f = grid_y[m];		
		var y = myscale(f, range[0], range[1], height, 0);
		
		with (mgraphics) {
			if (y == origin[1])
				set_source_rgba(0.0, 0.0, 0.0, 1.0);
			else
				set_source_rgba(0.5, 0.5, 0.5, 1.0);

			move_to(x, y);
			line_to(width, y);
			stroke();
		}
	}	
}


function paint_data() {
	var width = this.box.rect[2] - this.box.rect[0];
    var height = this.box.rect[3] - this.box.rect[1];
    
    // this is where a big for-loop starts
	var	i = 0;
	var	m;
	var stride_data = 1;	// stride is normally one, unless the data is thinned and we want to make larger steps through the vector
	var vecsize = vector.length;
	
	// work accross the domain of the plot
	// we have to do 3 passes, one for the lines, one for the points and one for numbers
	
	// Draw the lines
	if (lines != "none") {
		with (mgraphics) {
			set_source_rgba(color);
			set_line_width(thickness);
		
			for (m=0; m < vecsize; m += stride_data) {
				var y1 = myscale(vector[m], range[0], range[1], height, 0);
				var x_c1 = calculate_x(i, width);
				var y_c1 = y1;
			
				i += stride_data;
			
				if (isNaN(y1))
					continue;
				if (y1 == Infinity)
					continue;

				if (lines == "origin") {
					move_to(x_c1, myscale(origin[1], range[0], range[1], height, 0));
					line_to(x_c1, y_c1);
					stroke();
				}
				else if (lines == "linear") {
					if (i == 1)
						move_to(x_c1, y_c1);
					else {
						set_line_cap("round");
						set_line_join("round");
						line_to(x_c1, y_c1);
					}
				}
				else if (lines == "curve") {
					var pointspan = calculate_x(i, width) - calculate_x(i-1, width);
					var k;
				
					for (k=0; k<pointspan; k++) {
						var a;
						var b = vector[i-1];
						var c;
						var d;
						var y_interp;
						var c_minus_b;
						var frac = k/pointspan;
					
						if (i == 1) {
							if (k == 0) {
								move_to(x_c1, y_c1);
								continue;
							}
							c = vector[i];
							d = vector[i+1];
							a = b - c;
						}
						else if (i == vecsize){
							if (k == 0) {
								a = vector[i-2];
								c = b + (b-a);
								d = c + (c-b);
							}
							else {
								break;
							}
						}
						else if (i == vecsize-1){
							a = vector[i-2];
							c = vector[i];
							d = c + (c-b);
						}
						else {
							a = vector[i-2];
							c = vector[i];
							d = vector[i+1];
						}
						c_minus_b = c-b;
						y_interp = b + frac * (c_minus_b - 0.1666667 * (1.0 - frac) * ((d - a - (3.0 * c_minus_b)) * frac + (d + (2.0 * a) - (3.0 * b))));
					
						set_line_cap("round");
						set_line_join("round");
						line_to(x_c+k, myscale(y_interp, range[0], range[1], height, 0));
					}
				}				
			}
		
			if (lines == "linear" || lines == "curve")
				stroke();
		}
	}
	
	// If there are labels we need make sure that we clear the margin of any lines that have gone out of range
	// However, we still want the points to appear in their entirety, which may bleed over the margin slightly
	// So we apply the label background here
	//with (mgraphics) {
	//	set_source_rgba(1.0, 1.0, 1.0, 1.0);
	//	rectangle(0, height, width, 40.0);
	//	fill();
	//}
	
	// Draw the points	
	if (symbol != "none") {
		i = 0;
		for (m=0; m < vecsize; m += stride_data) {
			var x_c2 = calculate_x(i, width);
			var y2 = myscale(vector[m], range[0], range[1], height, 0);
			var y_c2 = y2;
			var radius = thickness * 1.5;
			
			i += stride_data;
			
			with (mgraphics) {
				set_source_rgba(color);
				set_line_width(thickness);				
			
				if (isNaN(y2))
					continue;
			
				if (symbol == "circle") {
					set_source_rgba(1.0, 1.0, 1.0, 1.0);
					ellipse(x_c2 - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
					fill();
				    
					set_source_rgba(color);
					ellipse(x_c2 - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
					stroke();
				}
				else if (symbol == "dot") {
					set_source_rgba(color);
					ellipse(x_c2 - thickness*2.0, y_c2 - thickness*2.0, thickness * 4.0, thickness * 4.0);
					fill();					
				}
				else if (symbol == "square") {
					set_source_rgba(1.0, 1.0, 1.0, 1.0);
					rectangle(x_c2 - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
					fill();
				    
					set_source_rgba(color);
					rectangle(x_c2 - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
					stroke();
				}
			}
		}
	}
	
	// Draw the Numbers
	if (number != "none") {
		i = 0;
		for (m=0; m < vecsize; m += stride_data) {
			var x_c3 = calculate_x(i, width);
			var y3 = myscale(vector[m], range[0], range[1], height, 0);
			var y_c3 = y3;
			var str;
			
			i += stride_data;
			
			with (mgraphics) {
				set_source_rgba(color);
				set_line_width(thickness);				
			
				if (isNaN(y3))
					continue;
			
				if (number == "above") {
					move_to(x_c3 - 10.0, y_c3 - 11.0);
				}
				else if (number == "below") {
					move_to(x_c3 - 10.0, y_c3 + 19.0);
				}
				else if (number == "center") {
					move_to(x_c3 - 10.0, y_c3 + 4.0);
				}

				set_source_rgb(0.2, 0.2, 0.2);
				select_font_face("Verdana", "normal", "normal");
				set_font_size(10.0);
				str = vector[m].toString();
				show_text(str);
			}
		}
	}
}


function paint() {
	paint_grid();
	paint_data();
}


function bang() {
	mgraphics.redraw();
}


function clear() {
    grid_x = new Array();
    grid_y = new Array();
    vector = new Array();
    domain = [1.0, 4.0];
    mgraphics.redraw();
}
