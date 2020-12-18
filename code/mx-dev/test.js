autowatch = 1;
inlets = 1;
outlets = 1;

var measure = "[[[[3 4] [60]] [1/2[Db5 100 0]] [1/2[E#5] [G#4]]]]";
var test = [1, 2, 3];


//[
//	[
//		[ [4 4] [60] ] 
//		[ 1/2[Db5 100 0] ] 
//		[ 1/2[E#5 100 0] [G#4 100 0] ]
//	]
//];


[
	[ 
		[ [3 4 ] [60] ]
	
		[   ]
		[
	]
	
]




function bang() {
	test.push();
	post(test);
	outlet(0, test);
	
	};