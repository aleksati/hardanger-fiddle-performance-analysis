{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 34.0, 79.0, 305.0, 380.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.1,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 158.0, 200.0, 20.0 ],
					"style" : "",
					"text" : "Connect to jit.cellblock like this"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-17",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 20.0, 156.0, 47.0 ],
					"style" : "",
					"text" : "Bang to select a file or send a path to a file. The file will be overwritten!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 83.0, 179.0, 22.0 ],
					"style" : "",
					"text" : "/Users/USERNAME/output.csv"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-12",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.0, 309.0, 179.0, 47.0 ],
					"style" : "",
					"text" : "© 2009-2016 Adam Murray\nadam@compusition.com \nMIT License"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 55.0, 78.0, 31.0, 31.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 33.0, 158.0, 36.0, 22.0 ],
					"style" : "",
					"text" : "grab"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "dump" ],
					"patching_rect" : [ 33.0, 130.0, 83.0, 22.0 ],
					"style" : "",
					"text" : "cellblock2csv"
				}

			}
, 			{
				"box" : 				{
					"cellmap" : [ [ 0, 0, 1 ], [ 0, 1, 4 ], [ 0, 2, "text" ], [ 0, 3, "a", "b", "c" ], [ 1, 0, 2 ], [ 1, 1, 5 ], [ 1, 2, "a" ], [ 1, 3, "d", "e", "f" ], [ 2, 0, 3 ], [ 2, 1, 6 ], [ 2, 2, "b" ], [ 2, 3, 1, "a", 2, "b" ] ],
					"cols" : 3,
					"fontface" : 0,
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"id" : "obj-1",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 50.0, 191.0, 202.0, 76.0 ],
					"rows" : 4,
					"savemode" : 1,
					"selmode" : 5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 42.5, 183.0, 24.0, 183.0, 24.0, 125.0, 42.5, 125.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 64.5, 117.0, 106.5, 117.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "cellblock2csv.maxpat",
				"bootpath" : "~/workspace/max_stuff/max5_projects/max_csv_tools",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cellblock2csv.js",
				"bootpath" : "~/workspace/max_stuff/max5_projects/max_csv_tools",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
