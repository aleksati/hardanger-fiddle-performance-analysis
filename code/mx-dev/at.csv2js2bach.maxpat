{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1468.0, 713.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.299995684623354, 932.0, 86.0, 22.0 ],
					"text" : "prepend store"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2083.0, 242.000001907348633, 70.0, 22.0 ],
					"text" : "outside"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2083.0, 134.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2076.0, 203.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "test.js",
						"parameter_enable" : 0
					}
,
					"text" : "js test.js"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1550.5, 601.5, 146.0, 31.0 ],
					"presentation_linecount" : 2,
					"text" : "clear selection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1811.0, 453.5, 100.0, 22.0 ],
					"text" : "r to_sel_range"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1430.0, 519.5, 38.653846740722656, 38.653846740722656 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1430.0, 601.5, 71.0, 22.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1482.0, 567.5, 348.0, 22.0 ],
					"text" : "pak i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1430.0, 644.5, 100.0, 22.0 ],
					"text" : "at.frompostopos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1185.0, 1036.0, 100.0, 22.0 ],
					"text" : "v beat_onsets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.0, 279.0, 92.0, 22.0 ],
					"text" : "sel marker 1.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1701.17952664693189, 461.5, 34.0, 20.0 ],
					"text" : "To"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1481.846193313598633, 461.5, 45.0, 20.0 ],
					"text" : "From"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1811.0, 492.5, 41.0, 20.0 ],
					"text" : "Beat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1701.17952664693189, 488.5, 41.0, 20.0 ],
					"text" : "Bar"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-153",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1811.0, 519.5, 64.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-158",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1701.333333333333258, 515.5, 64.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1354.0, 339.0, 65.0, 22.0 ],
					"text" : "mir2bach"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1354.0, 298.0, 119.0, 31.0 ],
					"presentation_linecount" : 2,
					"text" : "reset score"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1354.0, 367.519235610961914, 100.0, 22.0 ],
					"text" : "s to_transc2bach"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1591.5, 492.5, 41.0, 20.0 ],
					"text" : "Beat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1481.846193313598633, 492.5, 41.0, 20.0 ],
					"text" : "Bar"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-120",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1591.5, 519.5, 64.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-117",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1482.0, 519.5, 64.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 903.0, 1320.743569910526276, 156.0, 88.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1051.299995684623354, 903.0, 119.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1051.299995684623354, 942.0, 119.0, 22.0 ],
					"text" : "combine marker_ s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.69628977825198, 982.0, 150.207411812742748, 62.0 ],
					"presentation_linecount" : 3,
					"text" : "outputs = note onsets, note durations, pitch, marker tags + marker onsets and bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.292586369315586, 1181.0, 236.207411812742748, 20.0 ],
					"text" : "outputs = note onsets and duration + bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 312.299995684623354, 1159.0, 40.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 312.299995684623354, 1031.0, 100.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 312.299995684623354, 989.0, 100.0, 22.0 ],
					"text" : "t s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 312.299995684623354, 1070.0, 100.0, 22.0 ],
					"text" : "combine ratio_ s"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.325490196078431, 0.807843137254902, 0.815686274509804, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.299995684623354, 1106.861541926860809, 104.700004315376646, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "at.calcRatios.js",
						"parameter_enable" : 0
					}
,
					"text" : "js at.calcRatios.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1665.0, 710.423076629638672, 80.692306518554915, 20.0 ],
					"text" : "Play!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1169.0, 1066.0, 150.0, 20.0 ],
					"text" : "New marker/beat onsets "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 333.299995684623354, 967.0, 79.0, 20.0 ],
					"text" : "init message"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-307",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1023.606059610843658, 129.076919555664063, 51.787880778312683, 22.0 ],
					"text" : "play 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-306",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1658.000000000000227, 739.884658813476563, 87.692306518554688, 22.0 ],
					"text" : "r tonedivision"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.812280178070068, 264.691200375556946, 100.0, 22.0 ],
					"text" : "s tonedivision"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-304",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 153.499924659729004, 264.691200375556946, 94.615388870239258, 22.0 ],
					"text" : "tonedivision $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 2,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 153.499924659729004, 220.075811505317688, 69.500073432922363, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-296",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1431.0, 819.384616851806641, 79.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-295",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1185.0, 827.769233703613281, 87.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.717647058823529, 0.0, 1.0 ],
					"id" : "obj-294",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1185.0, 773.0, 87.0, 22.0 ],
					"text" : "at.mousegate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-257",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1406.0, 1158.0, 82.0, 22.0 ],
					"text" : "clearselection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1497.666666666666515, 1158.0, 87.0, 22.0 ],
					"text" : "prepend name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "float", "bang" ],
					"patching_rect" : [ 1406.0, 1123.0, 215.0, 22.0 ],
					"text" : "t b f b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 1595.666666666666515, 1158.0, 100.0, 22.0 ],
					"text" : "counter 1 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1595.666666666666515, 1192.0, 84.0, 22.0 ],
					"text" : "sel marker $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1406.0, 1080.0, 60.0, 22.0 ],
					"text" : "zl iter 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "bang", "", "int" ],
					"patching_rect" : [ 1406.0, 1031.0, 289.0, 22.0 ],
					"text" : "t l b l 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1620.500000000000455, 1071.0, 47.0, 22.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-225",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1676.0, 1087.461536407470703, 151.0, 48.0 ],
					"text" : "Update the marker names if we drag one marker across another."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1406.0, 1221.009335557620034, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 860.0, 752.0, 180.0, 20.0 ],
					"text" : "Need to add a ending marker.."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 908.284614354372025, 1087.461536407470703, 64.0, 22.0 ],
					"text" : "mir2bach"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 908.284614354372025, 1125.461536407470703, 100.0, 22.0 ],
					"text" : "s to_transc2bach"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.792210239171254, 879.102566182613373, 100.0, 22.0 ],
					"text" : "r to_transc2bach"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.717647058823529, 0.0, 1.0 ],
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 765.499998182058334, 1051.461536407470703, 161.78461617231369, 22.0 ],
					"text" : "at.beat_position_check"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.500000908970833, 1408.320506632328033, 158.999999999999886, 22.0 ],
					"text" : "s dur_init_marker2onset_js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 1431.0, 857.153850555419922, 164.0, 22.0 ],
					"text" : "b 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 847.75, 828.0, 130.0, 22.0 ],
					"text" : "prepend notedurations"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1576.0, 894.153850555419922, 97.0, 22.0 ],
					"text" : "dump durations"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1666.269231796264648, 16.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1666.269231796264648, 53.0, 50.0, 22.0 ],
					"text" : "ruler $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 93.652654767036438, 87.0, 22.0 ],
					"text" : "dumpselection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 847.75, 789.384616851806641, 111.5, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.portal @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1185.0, 903.0, 184.0, 22.0 ],
					"text" : "routepass markers notedurations"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 27,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1164.342306882143021, 1092.461536407470703, 203.884614944458008, 381.0 ],
					"text" : "2039 3072 3564 4109 4709 5130 5526 6006 6455 6825 7282 7713 8199 8715 9124 9472 9929 10286 10739 11180 11610 12067 12420 12959 13433 13861 14249 14692 15098 15506 15999 16452 16827 17386 17786 18179 18644 18991 19516 19981 20401 20809 21254 21651 22081 22543 23007 23362 23835 24788 25232 25594 25605 26170 26603 26961 27528 27952 28312 28863 29294 29655.994751 30213 30226 30705 31011 31486 32045 32359 32828 33303 33579 34097 34614 34944 35488 35947 36381 36775 37206 37597 37992 38466 38965 39281 39821 40654 41104 41464 42038 42457 42777 43352 43796 44189 44708 45154 46078 46551 46871 47380 47890 48410 48695 49199 49497 49949 50474 50812 51350 51789 52225 52601 53043 53429 53830 54326 54783 55156 55629 56479 56979 57337 57762 58253 59137 59620 59939 60431 60957 61786 62328 62733 63231 63687 64168"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.325490196078431, 0.807843137254902, 0.815686274509804, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1185.0, 983.0, 240.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "at.marker2onset.js",
						"parameter_enable" : 0
					}
,
					"text" : "js at.marker2onset.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1969.284614354372025, 1357.743569910526276, 150.0, 48.0 ],
					"text" : "make the beats louder in velocity than the rest? Could be groovey."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-312",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ -4.115425109863281, 265.844965100288391, 149.0, 22.0 ],
					"text" : "loadmess tonedivision 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1686.000000000000227, 821.576927185058594, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-320",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 1609.000000000000227, 776.423076629638672, 117.0, 22.0 ],
					"text" : "bach.ezmidiplay 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-297",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1087.038429260253906, 184.0, 48.484848380088806, 22.0 ],
					"text" : "pause"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1211.0, 403.307695388793945, 102.0, 22.0 ],
					"text" : "r bach_roll_velo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 266.366664092739029, 1353.743569910526276, 119.0, 22.0 ],
					"text" : "s bach_roll_duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.799996593594187, 1353.743569910526276, 101.0, 22.0 ],
					"text" : "s bach_roll_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.992215463518733, 1353.743569910526276, 106.692306518554688, 22.0 ],
					"text" : "s bach_roll_onset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 444.0, 1420.243585169315338, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1430.999998182058334, 934.538467407226563, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1417.5, 227.000001907348633, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 407.199992744127712, 294.344940304756165, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 319.383426785469055, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2913.999998182058334, 513.92310905456543, 119.0, 22.0 ],
					"text" : "s bach_roll_extras"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1354.0, 403.307695388793945, 119.0, 22.0 ],
					"text" : "r bach_roll_extras"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2757.999998182058334, 513.92310905456543, 119.0, 22.0 ],
					"text" : "s bach_roll_duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2618.999998182058334, 513.92310905456543, 119.0, 22.0 ],
					"text" : "s bach_roll_onset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2460.999998182058334, 513.92310905456543, 101.0, 22.0 ],
					"text" : "s bach_roll_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1068.0, 403.307695388793945, 119.0, 22.0 ],
					"text" : "r bach_roll_duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 782.0, 403.307695388793945, 102.0, 22.0 ],
					"text" : "r bach_roll_onset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 403.307695388793945, 101.0, 22.0 ],
					"text" : "r bach_roll_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1013.0, 227.092308223247528, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 661.80769157409668, 399.0, 101.0, 22.0 ],
					"text" : "r bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 532.799996593594187, 1293.743585169315338, 50.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 605.480768203735352, 359.192312240600586, 38.653846740722656, 38.653846740722656 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.499998182058334, 1110.861541926860809, 121.0, 22.0 ],
					"text" : "prepend recreateOD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 55.652654767036438, 150.0, 62.0 ],
					"text" : "initialize slot 1 to be the ornamentation color slot. with a range normal, before, after"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 119.652654767036438, 154.0, 77.0 ],
					"text" : "[slotinfo [1 [name color] [type int] [range 1 3] [representation [none before after]]]], linknotecolortoslot 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2913.999998182058334, 467.384641647338867, 87.014813180764349, 22.0 ],
					"text" : "[slots [ 1 [2]]]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.299995684623354, 1015.0, 50.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 279.749994214375533, 799.30769157409668, 97.0, 20.0 ],
					"text" : "drag & drop csv"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 202.299995684623354, 1051.461536407470703, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll theData"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.299995684623354, 879.102566182613373, 47.0, 22.0 ],
					"text" : "csv $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 90.299995684623354, 765.0, 475.899997059504358, 88.615383148193359 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 88.699992744127712, 418.435897409915924, 67.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 88.699992744127712, 450.435897409915924, 81.0, 22.0 ],
					"text" : "refer theData"
				}

			}
, 			{
				"box" : 				{
					"cols" : 8,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-123",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 88.699992744127712, 486.0, 479.5, 251.0 ],
					"rows" : 368
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 517.248144268989563, 1376.002839267253876, 157.407407283782959, 20.0 ],
					"text" : "Combine the marker labels"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.0, 1375.947288811206818, 67.592593133449554, 22.0 ],
					"text" : "join l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.592593133449554, 1332.743585169315338, 80.0, 22.0 ],
					"text" : "sprintf %i.%i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 443.933331591884098, 1293.743585169315338, 67.703703641891479, 22.0 ],
					"text" : "zl slice 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 676.699992744127712, 153.652654767036438, 50.0, 22.0 ],
					"text" : "37"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 601.699992744127712, 159.652654767036438, 50.0, 22.0 ],
					"text" : "197"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 615.199992744127712, 114.652654767036438, 63.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 676.699992744127712, 200.152654767036438, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 676.699992744127712, 238.652654767036438, 69.0, 22.0 ],
					"text" : "zoom $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 601.699992744127712, 204.152654767036438, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 601.699992744127712, 238.652654767036438, 66.0, 22.0 ],
					"text" : "vzoom $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.699992744127712, 52.61410915851593, 109.0, 20.0 ],
					"text" : "Transpose octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.699992744127712, 198.652654767036438, 50.0, 22.0 ],
					"text" : "- 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 407.199992744127712, 198.652654767036438, 50.0, 22.0 ],
					"text" : "+ 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 407.199992744127712, 161.652654767036438, 138.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"id" : "obj-77",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 407.199992744127712, 79.652654767036438, 161.0, 70.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "up/octave", "down/octave" ],
							"parameter_longname" : "live.tab",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 407.199992744127712, 237.652654767036438, 178.0, 36.0 ],
					"text" : "select all, cents = cents $1 $2, clearselection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.366664092739029, 1311.039881527423859, 65.0, 22.0 ],
					"text" : "append ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.366664092739029, 1281.743585169315338, 65.0, 22.0 ],
					"text" : "prepend ["
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.583330343166608, 1311.039881527423859, 65.0, 22.0 ],
					"text" : "append ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.583330343166608, 1281.743585169315338, 65.0, 22.0 ],
					"text" : "prepend ["
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 88.799996593594187, 1311.039881527423859, 65.0, 22.0 ],
					"text" : "append ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 88.799996593594187, 1281.743585169315338, 65.0, 22.0 ],
					"text" : "prepend ["
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2773.384681701660156, 452.615409851074219, 109.100002497434616, 22.0 ],
					"text" : "[ 1000 3000 100 ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2645.999998182058334, 437.42310905456543, 107.100002497434616, 22.0 ],
					"text" : "[ 2100 100 3000]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1635.653806686401367, 155.000001907348633, 63.846155166625977, 22.0 ],
					"text" : "clefs G F"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1635.653806686401367, 124.0, 50.0, 22.0 ],
					"text" : "clefs G"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1635.653806686401367, 97.0, 50.0, 22.0 ],
					"text" : "clefs F"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1367.461462020874023, 129.076919555664063, 97.692312240600586, 22.0 ],
					"text" : "deletevoice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1367.461462020874023, 96.846149444580078, 94.615388870239258, 22.0 ],
					"text" : "insertvoice -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1279.653806686401367, 93.652654767036438, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1279.653806686401367, 130.0, 71.0, 22.0 ],
					"text" : "autosize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2393.899995684623718, 437.42310905456543, 117.100002497434616, 22.0 ],
					"text" : "[ 6000 7000 6500 ]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1503.653806686401367, 130.0, 44.0, 21.0 ],
					"text" : "Cents"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1503.653806686401367, 103.0, 125.0, 21.0 ],
					"text" : "Unreduced Fraction"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1482.153806686401367, 184.0, 137.0, 23.0 ],
					"text" : "accidentalsgraphic $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1503.653806686401367, 73.5, 57.0, 21.0 ],
					"text" : "Fraction"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1503.653806686401367, 45.0, 63.0, 21.0 ],
					"text" : "Classical"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1503.653806686401367, 16.0, 42.0, 21.0 ],
					"text" : "None"
				}

			}
, 			{
				"box" : 				{
					"activecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"disabled" : [ 0, 0, 0, 0, 0 ],
					"id" : "obj-4",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 30,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1482.153806686401367, 16.0, 18.0, 152.0 ],
					"size" : 5,
					"value" : 4
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2469.461544036865234, 413.230768203735352, 138.200004994869232, 22.0 ],
					"text" : "[ [6000] [6200] [6420] ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 88.799996593594187, 1243.143590688705444, 551.70000249743498, 22.0 ],
					"text" : "route onsets cents durations bang markers clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 157.792210239171254, 879.102566182613373, 64.0, 22.0 ],
					"text" : "mir2bach"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1087.038429260253906, 129.076919555664063, 50.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1146.038429260253906, 138.901191771030426, 78.787880778312683, 22.0 ],
					"text" : "play 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1430.999998182058334, 894.153850555419922, 137.0, 22.0 ],
					"text" : "getmarker @namefirst 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1185.0, 866.0, 111.5, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.portal @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2618.999998182058334, 393.0, 95.200004994869232, 22.0 ],
					"text" : "[500 750 1000]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2825.048582677046397, 419.230768203735352, 96.200004994869232, 22.0 ],
					"text" : "[ 100 500 1000 ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 964.396297037601471, 153.652654767036438, 41.603702962398529, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"accidentalsgraphic" : 4,
					"autoclear" : 0,
					"autosize" : 0,
					"bwcompatibility" : 80100,
					"continuousbang" : 1,
					"continuouslyoutputbangifchanged" : 1,
					"defaultnoteslots" : [ "null" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linknotecolortoslot" : 1,
					"loop" : [ 0.0, 1000.0 ],
					"maxclass" : "bach.roll",
					"midichannels" : [ 2 ],
					"numinlets" : 6,
					"numoutlets" : 8,
					"numvoices" : 1,
					"out" : "nnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "bang" ],
					"patching_rect" : [ 639.0, 442.0, 734.0, 291.0 ],
					"pitcheditrange" : [ "null" ],
					"showplayhead" : 1,
					"stafflines" : [ 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tonedivision" : 16,
					"versionnumber" : 80100,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 17.0, 17.0 ],
					"vzoom" : 197.0,
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "color", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "[", "none", "before", "after", "]", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080049664, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084218368, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1072798105, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084751872, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1072902963, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085003776, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1073007820, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085279488, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1073794252, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085433088, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1073846681, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085540864, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1073899110, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085642240, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1074318540, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085765120, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1074370969, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880064, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1074423398, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1074816614, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086091776, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1074842828, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086202112, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1074869043, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325632, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075078758, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086391680, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1075104972, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086444032, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075131187, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086488576, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075340902, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086547072, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1075367116, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086592768, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075393331, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086650752, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075603046, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086707200, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1075629260, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086762240, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075655475, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086820736, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075852083, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086865920, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075865190, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086934912, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1075878297, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086995584, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075983155, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087050368, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075996262, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087100032, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076009369, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087156736, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076114227, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087208704, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076127334, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087260928, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076140441, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324032, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076245299, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087377664, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076258406, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087401664, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076271513, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087437440, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076376371, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087463040, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076389478, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087488192, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076402585, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087517952, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076507443, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087540160, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076520550, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087573760, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076533657, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087603520, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076638515, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087630400, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076651622, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087656512, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076664729, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087684992, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076769587, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087710400, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076782694, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087737920, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076795801, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087767488, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076894105, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087797184, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076900659, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087819904, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1076907212, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087850176, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076959641, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087911168, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1076972748, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087939584, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077025177, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087962752, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077031731, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087963456, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077031731, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087999616, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077038284, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088027328, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077090713, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088050240, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077097267, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088086528, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077103820, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088113664, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077156249, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088136704, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077162803, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088171968, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077169356, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088199552, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077221785, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088220032, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077228339, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088258368, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077234892, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088259200, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077234892, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088289856, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077287321, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088309440, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077293875, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088339840, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077300428, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088375616, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077352857, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088395712, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077359411, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088423808, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077365964, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088439008, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077418393, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088447840, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077424947, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088464416, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077431500, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088480960, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077483929, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088491520, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077490483, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088508928, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077497036, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088523616, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077549465, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088537504, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077556019, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088550112, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077562572, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088563904, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077615001, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088576416, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077621555, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088589056, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077628108, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088604224, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077680537, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088620192, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077687091, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088630304, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077693644, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088647584, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077746073, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088674240, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077759180, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088688640, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077811609, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088700160, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077818163, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088718528, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077824716, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088731936, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077877145, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088742176, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1077883699, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088760576, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077890252, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088774784, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077939404, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088787360, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1077942681, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088803968, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1077945958, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088818240, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1077972172, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088847808, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1077978726, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088862944, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078004940, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088873184, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078008217, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088889472, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078011494, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088905792, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078037708, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088922432, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078040985, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088931552, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078044262, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088947680, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078070476, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088957216, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078073753, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088971680, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078077030, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088988480, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078103244, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088999296, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078106521, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089016512, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078109798, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089030560, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078136012, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089044512, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078139289, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089056544, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078142566, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089070688, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078168780, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089083040, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078172057, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089095872, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078175334, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089111744, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078201548, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089126368, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078204825, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089138304, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078208102, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089153440, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078234316, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089180640, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078240870, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089196640, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078267084, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089208096, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078270361, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089221696, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078273638, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089237408, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078299852, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089265696, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078306406, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089281152, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078332620, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089291360, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078335897, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089307104, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078339174, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089323936, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078365388, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089350464, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078371942, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089367808, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078398156, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089380768, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1078401433, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089396704, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1078404710, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089411296, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1078430924, "none", "]", "]", "[", "midichannels", 2, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084218368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084232192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890182, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084652544, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084655104, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989254, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084751872, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069126, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084755968, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085988742, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084844544, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085888646, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085003776, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085006848, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085279488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086174086, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085282304, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085398272, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085398528, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086300806, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085433088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086251270, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085433088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085508096, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086169478, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085540864, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086169734, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085590784, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086248582, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085592064, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086123142, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085642240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085682176, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085944198, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085704192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086173446, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085765120, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085889670, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880064, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085935238, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085911174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979648, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086060288, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086061312, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085990022, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086091776, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069894, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086094080, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085990278, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086130432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086202112, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086202624, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086326275, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325632, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086171014, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086327296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890182, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086372608, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086299782, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086372992, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086391680, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086392320, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086251142, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086428800, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086168454, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086444032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086170246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086467712, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086121350, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086488576, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086510464, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085942918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086510848, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1090588708, 1086124234, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086547072, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086592768, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085938310, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086650752, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086071814, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086652800, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086690048, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086691456, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085989638, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086707200, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989766, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086726272, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086762240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086762880, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086333891, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086820736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086170758, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086820992, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085890694, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086865920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086300550, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086865920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086895360, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378051, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086913536, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338371, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086915840, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086069382, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086934912, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086248838, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086958208, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3397152638, 1086352374, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086971008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086995584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086195334, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087016192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086169990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087030784, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087030912, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086118534, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087050368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086071814, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087069568, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086119302, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087079936, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086172038, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087100032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086196102, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087117440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086248582, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087119488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086069638, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087129344, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086299526, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_" ],
					"whole_roll_data_0000000001" : [ 0, 1087129728, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086072454, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087156736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086194310, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087178880, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087208704, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087209728, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086333251, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087260928, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086250118, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087260928, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087295104, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086171526, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087325056, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085941894, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087353344, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085943686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087353856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086171782, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087377664, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086193798, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087377728, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085890438, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087401664, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087418688, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086299014, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087419392, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086195078, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087437440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087437440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086251142, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087452160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087453312, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085990790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087463040, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087463296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989254, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087471296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087488192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086334147, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087488832, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087497088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086298246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087517952, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086169734, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087518592, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087527040, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086189702, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087540160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087540352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086301062, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087553472, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086376963, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087562880, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086340163, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087573760, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086249094, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087584384, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086355651, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087591552, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086298246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087603520, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086204550, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087613632, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086168454, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087621696, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086121094, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087630400, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086072710, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087640960, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086119814, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087648064, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086170246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087649088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087656512, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086191878, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087666368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086247558, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087667008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087684992, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890054, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087693184, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086299014, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087693440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087710400, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087710912, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086334275, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087720512, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086299270, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087737920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086250118, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087737920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086072966, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087753984, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087767488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086170502, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087767488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085941894, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087781952, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085943942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087782592, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086172294, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087797184, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890182, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087819904, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085990022, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087827840, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085889158, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087828480, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085763718, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087850176, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071558, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087850368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086343235, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087896384, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087911168, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086072710, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087911424, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086349891, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087922560, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086379075, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087923072, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087939584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086338499, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087939904, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086069382, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087951040, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086345539, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087962752, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086291846, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087963264, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086069638, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087963456, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086249094, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087984320, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087999616, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086372035, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088015680, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378051, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088027328, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338627, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088027392, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088050240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086110854, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088072256, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088072448, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088086528, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086347715, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088087104, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088098240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086069638, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088098624, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086377923, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088113664, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069894, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088113664, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338627, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088136704, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086292102, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088136832, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088156416, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088156480, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086349891, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088171968, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086372675, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088172352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086071046, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088199552, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069126, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088200128, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086345219, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088220032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086110214, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088240960, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088241216, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086296966, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088258368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086351043, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088258496, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086296710, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088259200, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088277888, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088289856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086338499, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088290176, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088301120, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088301440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086248326, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088309440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086297734, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088309952, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088322816, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088339840, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088339904, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086336451, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088358400, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088359296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378563, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088375616, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086377795, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088388224, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338755, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088388352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088395712, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088423808, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086331459, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088433216, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088433280, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086377539, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088439008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086337987, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088439296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088444672, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088444768, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086248582, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088447840, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088448352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088455168, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088464416, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297606, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088472192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071302, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088472800, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378435, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088480960, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086337987, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088480992, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088491520, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088498624, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378051, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088504160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338243, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088508928, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086248326, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088514496, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086351299, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088514496, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088518336, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086298246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088523616, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086298246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088523712, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086199942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088529408, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086169734, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088533344, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086118278, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088537504, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086072710, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088542656, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086122374, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088545824, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086172806, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088550112, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086195334, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088557152, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086298118, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088557248, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086072198, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088563904, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088563968, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086188934, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088568320, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086298502, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088576416, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086330627, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088576416, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088589056, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086250630, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088589184, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088597248, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088597600, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086195334, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088604224, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085942790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088604480, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086171270, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088620192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088630304, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989766, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088630688, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085762310, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088644544, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085888390, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088647584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 437753679, 1086071161, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088665216, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086293126, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088665472, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086072966, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088674240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086345475, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088674560, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088680992, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378179, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088688640, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088688800, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086339779, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088694624, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088694848, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086348099, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088700160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086294918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088700192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088710560, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069894, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088710624, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2881756562, 1086346801, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088718528, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086373955, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088731936, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338371, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088732416, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088742176, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086113542, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088753760, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088753824, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086296710, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088760576, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3259713685, 1086348490, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088767136, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086377795, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088767264, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088774784, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086069382, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088775200, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338243, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088781984, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2881756562, 1086346801, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088787360, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086291078, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088787584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086069382, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088797024, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086350147, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088797088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088803968, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086375107, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088804064, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088818240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088818464, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086337731, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088827840, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086110598, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088838880, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086296966, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088838944, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086072198, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088847808, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086351043, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088847904, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088858112, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070790, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088858272, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086376899, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088862944, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086339139, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088863520, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088868960, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088869408, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086248710, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088873184, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088873504, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070278, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088880320, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088880608, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086349507, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088889472, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088889728, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086298758, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088898336, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088898368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378243, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088905792, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1198129382, 1086378374, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088913920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086348227, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088922432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086297478, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088931552, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086343235, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088942400, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086376643, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088947680, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338371, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088953056, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086249350, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088957216, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086297478, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088963616, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086347203, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088971680, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086334147, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088980352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086376771, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088988480, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086338115, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1088999296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086297478, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089005952, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086376259, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089011488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086338499, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089016512, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086247814, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089021632, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 167337232, 1086351980, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089025312, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086297478, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089030560, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086196102, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089035648, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086169222, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089040128, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086118534, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089044512, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086073222, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089049088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086120326, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089052096, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086174342, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089056544, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086196998, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089061536, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086250118, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089070688, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086184838, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089074592, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086298502, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089083040, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086328259, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089095872, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086250630, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089104608, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086193542, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089111744, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086171014, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089116416, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 953149754, 1086131230, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089119296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086170118, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089126368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3530130132, 1086194935, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_" ],
					"whole_roll_data_0000000002" : [ 0, 1089138304, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085990534, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089142976, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089153440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086042246, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089180640, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086112134, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089196640, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086019462, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089201216, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085940614, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089204864, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086012038, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089208096, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085988486, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089212640, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085888646, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089221696, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085942662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089228352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086069382, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089237408, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085888134, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089247296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085764230, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089255808, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086300038, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089265696, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086342083, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089276480, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086299014, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089281152, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086192262, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089287392, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086248838, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089291360, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086170502, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089297952, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089307104, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086041478, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089313024, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086124422, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089323936, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086043526, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089340736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086123910, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089350464, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086162822, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089360800, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086124678, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089367808, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086046342, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089373888, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089380768, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085985414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089389440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085885574, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089393056, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086001542, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089396704, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085945094, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089400864, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085862278, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089403488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085943430, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1089411296, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085888134, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]" ],
					"whole_roll_data_count" : [ 3 ],
					"zoom" : 247.078125
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.325490196078431, 0.807843137254902, 0.815686274509804, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.499998182058334, 1154.0, 117.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "at.recreateData.js",
						"parameter_enable" : 0
					}
,
					"text" : "js at.recreateData.js"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.325490196078431, 0.807843137254902, 0.815686274509804, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 92.299995684623354, 943.0, 239.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "at.transc2bach.js",
						"parameter_enable" : 0
					}
,
					"text" : "js at.transc2bach.js"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 1 ],
					"order" : 1,
					"source" : [ "obj-1", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-296", 1 ],
					"source" : [ "obj-1", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-102", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 1 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-116", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 1 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 5 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 4 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 3 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-154", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 2 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 1 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"order" : 3,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 2,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"order" : 0,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"order" : 1,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 1 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 1 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"order" : 2,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 4 ],
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"source" : [ "obj-238", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 0 ],
					"source" : [ "obj-238", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 2 ],
					"source" : [ "obj-238", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 0 ],
					"source" : [ "obj-255", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"source" : [ "obj-255", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 0 ],
					"order" : 1,
					"source" : [ "obj-294", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-296", 0 ],
					"order" : 0,
					"source" : [ "obj-294", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-295", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-296", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 0 ],
					"order" : 1,
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 0 ],
					"order" : 0,
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 1 ],
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-307", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 402.799995684623354, 1024.461536407470703, 657.149997842311677, 1024.461536407470703, 657.149997842311677, 888.0, 1060.799995684623354, 888.0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 1 ],
					"source" : [ "obj-320", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"order" : 1,
					"source" : [ "obj-39", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-39", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-39", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-39", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 774.999998182058334, 1214.302563548088074, 98.299996593594187, 1214.302563548088074 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-78", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-77" : [ "live.tab", "live.tab", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "at.transc2bach.js",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "at.recreateData.js",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bach.ezmidiplay.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.gcd.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.approx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "at.marker2onset.js",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "at.beat_position_check.maxpat",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "at.mousegate.maxpat",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "at.calcRatios.js",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "at.frompostopos.maxpat",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "test.js",
				"bootpath" : "~/Documents/GitHub/thesis/code/mx-dev",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bach.roll.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.portal.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.playkeys.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.expr.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.length.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.iter.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.flat.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.pick.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.args.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.reg.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.print.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.keys.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.gt.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.is.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.neq.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.eq.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.nth.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.slice.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
