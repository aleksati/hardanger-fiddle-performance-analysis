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
		"rect" : [ 34.0, 77.0, 1024.0, 713.0 ],
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
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1378.807692527770996, 1224.243585169315338, 191.0, 34.0 ],
					"text" : "This should be removed actually... in favor of the dict."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 18.299995684623354, 338.0, 65.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.799995684623354, 739.076925277709961, 237.0, 20.0 ],
					"text" : "Beat onset and durations change(!)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1777.0, 650.0, 150.0, 34.0 ],
					"text" : "should include the dict instead..."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 53.799995684623354, 367.519235610961914, 40.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.299995684623354, 442.0, 351.78461617231369, 291.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 18.299995684623354, 404.458697140216827, 139.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @name track_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2161.25, 750.0, 127.0, 20.0 ],
					"text" : "Onset ratios (notes)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2161.25, 772.0, 390.0, 127.576921463012695 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2161.25, 586.884658813476563, 139.0, 20.0 ],
					"text" : "Durations ratios (notes)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2161.25, 428.0, 95.0, 20.0 ],
					"text" : "Beat durations"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2161.25, 608.884658813476563, 390.0, 127.576921463012695 ]
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
					"patching_rect" : [ 1790.5, 601.5, 146.0, 31.0 ],
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
					"patching_rect" : [ 2051.0, 453.5, 100.0, 22.0 ],
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
					"patching_rect" : [ 1670.0, 519.5, 38.653846740722656, 38.653846740722656 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1670.0, 601.5, 71.0, 22.0 ],
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
					"patching_rect" : [ 1722.0, 567.5, 348.0, 22.0 ],
					"text" : "pak i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1670.0, 644.5, 100.0, 22.0 ],
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
					"patching_rect" : [ 1388.75, 1266.243585169315338, 100.0, 22.0 ],
					"text" : "v beat_onsets",
					"varname" : "valuebox_beat_onsets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1110.396297037601471, 177.652654767036438, 92.0, 22.0 ],
					"text" : "sel marker 1.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1941.17952664693189, 468.5, 34.0, 20.0 ],
					"text" : "To"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1721.846193313598633, 468.5, 45.0, 20.0 ],
					"text" : "From"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2051.0, 492.5, 41.0, 20.0 ],
					"text" : "Beat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1941.17952664693189, 488.5, 41.0, 20.0 ],
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
					"patching_rect" : [ 2051.0, 519.5, 64.0, 31.0 ]
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
					"patching_rect" : [ 1941.333333333333258, 515.5, 64.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1594.0, 339.0, 65.0, 22.0 ],
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
					"patching_rect" : [ 1594.0, 298.0, 119.0, 31.0 ],
					"text" : "reset score"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1594.0, 367.519235610961914, 100.0, 22.0 ],
					"text" : "s to_transc2bach"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1831.5, 492.5, 41.0, 20.0 ],
					"text" : "Beat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1721.846193313598633, 492.5, 41.0, 20.0 ],
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
					"patching_rect" : [ 1831.5, 519.5, 64.0, 31.0 ]
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
					"patching_rect" : [ 1722.0, 519.5, 64.0, 31.0 ]
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
					"patching_rect" : [ 2161.25, 453.5, 390.0, 121.576921463012695 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1269.299995684623354, 903.0, 119.0, 22.0 ],
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
					"patching_rect" : [ 1269.299995684623354, 942.0, 141.0, 22.0 ],
					"text" : "combine bach2onset_ s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 404.092583871880606, 948.0, 150.207411812742748, 62.0 ],
					"text" : "outputs = note onsets, note durations, pitch, marker tags + marker onsets and bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 921.292586369315586, 1164.0, 236.207411812742748, 20.0 ],
					"text" : "outputs = note onsets and duration + bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 776.299995684623354, 1030.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 776.299995684623354, 988.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 776.299995684623354, 1069.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 776.299995684623354, 1106.461536407470703, 104.700004315376646, 22.0 ],
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
					"patching_rect" : [ 1898.000000000000227, 715.423076629638672, 46.692306518554915, 20.0 ],
					"text" : "Play!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1437.0, 1009.0, 162.942307472229004, 20.0 ],
					"text" : "output = New beat onsets "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 797.299995684623354, 966.0, 79.0, 20.0 ],
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
					"patching_rect" : [ 1263.606059610843658, 129.076919555664063, 37.787880778312683, 22.0 ],
					"text" : "play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-306",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1898.000000000000227, 739.884658813476563, 87.692306518554688, 22.0 ],
					"text" : "r tonedivision"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.812280178070068, 239.268043637275696, 87.0, 22.0 ],
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
					"patching_rect" : [ 417.499924659729004, 239.268043637275696, 94.615388870239258, 22.0 ],
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
					"patching_rect" : [ 417.499924659729004, 198.652654767036438, 54.500073432922363, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-296",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1671.0, 819.384616851806641, 79.0, 22.0 ],
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
					"patching_rect" : [ 1425.0, 827.769233703613281, 87.0, 22.0 ],
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
					"patching_rect" : [ 1425.0, 773.0, 87.0, 22.0 ],
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
					"patching_rect" : [ 1646.0, 1158.0, 82.0, 22.0 ],
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
					"patching_rect" : [ 1737.666666666666515, 1158.0, 87.0, 22.0 ],
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
					"patching_rect" : [ 1646.0, 1123.0, 215.0, 22.0 ],
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
					"patching_rect" : [ 1835.666666666666515, 1158.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 1835.666666666666515, 1192.0, 84.0, 22.0 ],
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
					"patching_rect" : [ 1646.0, 1080.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 1646.0, 1031.0, 289.0, 22.0 ],
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
					"patching_rect" : [ 1860.500000000000455, 1071.0, 47.0, 22.0 ],
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
					"patching_rect" : [ 1916.0, 1087.461536407470703, 151.0, 48.0 ],
					"text" : "Update the marker names if we drag one marker across another."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1646.0, 1221.009335557620034, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1104.499998182058334, 765.0, 198.0, 20.0 ],
					"text" : "Need to add a ending marker.. ???"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1302.284614354372025, 1102.0, 64.0, 22.0 ],
					"text" : "mir2bach"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1302.284614354372025, 1140.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 710.792210239171254, 878.102566182613373, 100.0, 22.0 ],
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
					"patching_rect" : [ 1159.499998182058334, 1066.0, 161.78461617231369, 22.0 ],
					"text" : "at.beat_position_check"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 1671.0, 857.153850555419922, 164.0, 22.0 ],
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
					"patching_rect" : [ 1087.75, 828.0, 130.0, 22.0 ],
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
					"patching_rect" : [ 1816.0, 894.153850555419922, 97.0, 22.0 ],
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
					"patching_rect" : [ 1906.269231796264648, 16.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1906.269231796264648, 53.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 1165.0, 93.652654767036438, 87.0, 22.0 ],
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
					"patching_rect" : [ 1087.75, 789.384616851806641, 111.5, 22.0 ],
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
					"patching_rect" : [ 1425.0, 903.0, 184.0, 22.0 ],
					"text" : "routepass markers notedurations"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 10,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1378.807692527770996, 1293.243585169315338, 203.884614944458008, 146.0 ],
					"text" : "2039 2765.535509 3417.489443 4109 4709 5130 5526 6006 6455 6825 7282 7713 8199 8715 9124 9472 9929 10286 10739 11180 11610 11905.771593 12420 12959 13433 13861 14249 14692 15098 15506 15999 16452 16827 17386 17786 18179 18644 18991 19516 19981 20401 20809 21254 21651 22081 22543 23007 23362 23695"
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
					"patching_rect" : [ 1425.0, 983.0, 240.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "at.bach2onset.js",
						"parameter_enable" : 0
					}
,
					"text" : "js at.bach2onset.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2209.284614354372025, 1357.743569910526276, 150.0, 48.0 ],
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
					"patching_rect" : [ 417.499924659729004, 167.421808362007141, 82.0, 22.0 ],
					"text" : "loadmess 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1926.000000000000227, 821.576927185058594, 40.0, 22.0 ],
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
					"patching_rect" : [ 1849.000000000000227, 776.423076629638672, 117.0, 22.0 ],
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
					"patching_rect" : [ 1327.038429260253906, 184.0, 48.484848380088806, 22.0 ],
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
					"patching_rect" : [ 1451.0, 403.307695388793945, 102.0, 22.0 ],
					"text" : "r bach_roll_velo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 766.866663183768196, 1338.743569910526276, 119.0, 22.0 ],
					"text" : "s bach_roll_duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 658.299995684623354, 1338.743569910526276, 101.0, 22.0 ],
					"text" : "s bach_roll_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 536.4922145545479, 1338.743569910526276, 106.692306518554688, 22.0 ],
					"text" : "s bach_roll_onset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 944.499999091029167, 1405.243585169315338, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1670.999998182058334, 934.538467407226563, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1657.5, 227.000001907348633, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 647.199992744127712, 294.344940304756165, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.0, 293.960270047187805, 100.0, 22.0 ],
					"text" : "s bach_roll_main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3153.999998182058334, 513.92310905456543, 119.0, 22.0 ],
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
					"patching_rect" : [ 1594.0, 403.307695388793945, 119.0, 22.0 ],
					"text" : "r bach_roll_extras"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2997.999998182058334, 513.92310905456543, 119.0, 22.0 ],
					"text" : "s bach_roll_duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2858.999998182058334, 513.92310905456543, 119.0, 22.0 ],
					"text" : "s bach_roll_onset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2700.999998182058334, 513.92310905456543, 101.0, 22.0 ],
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
					"patching_rect" : [ 1308.0, 403.307695388793945, 119.0, 22.0 ],
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
					"patching_rect" : [ 1022.0, 403.307695388793945, 102.0, 22.0 ],
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
					"patching_rect" : [ 1165.0, 403.307695388793945, 101.0, 22.0 ],
					"text" : "r bach_roll_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1253.0, 227.092308223247528, 100.0, 22.0 ],
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
					"patching_rect" : [ 891.199992744127712, 403.307695388793945, 101.0, 22.0 ],
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
					"patching_rect" : [ 1033.299995684623354, 1278.743585169315338, 50.0, 22.0 ],
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
					"patching_rect" : [ 845.480768203735352, 359.192312240600586, 38.653846740722656, 38.653846740722656 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1159.499998182058334, 1102.0, 121.0, 22.0 ],
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
					"patching_rect" : [ 250.0, 79.652654767036438, 150.0, 62.0 ],
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
					"patching_rect" : [ 250.0, 143.652654767036438, 154.0, 77.0 ],
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
					"patching_rect" : [ 3153.999998182058334, 467.384641647338867, 87.014813180764349, 22.0 ],
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
					"patching_rect" : [ 702.299995684623354, 1014.0, 50.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.949992744127712, 781.384616851806641, 97.0, 20.0 ],
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
					"patching_rect" : [ 666.299995684623354, 1050.461536407470703, 73.0, 22.0 ],
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
					"patching_rect" : [ 556.299995684623354, 878.102566182613373, 47.0, 22.0 ],
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
					"patching_rect" : [ 378.499994214375533, 747.076925277709961, 475.899997059504358, 88.615383148193359 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 380.699992744127712, 375.846158981323242, 67.0, 22.0 ],
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
					"patching_rect" : [ 380.699992744127712, 407.846158981323242, 81.0, 22.0 ],
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
					"patching_rect" : [ 380.699992744127712, 442.0, 471.5, 291.0 ],
					"rows" : 141
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1017.74814336001873, 1361.002839267253876, 157.407407283782959, 20.0 ],
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
					"patching_rect" : [ 944.499999091029167, 1360.947288811206818, 67.592593133449554, 22.0 ],
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
					"patching_rect" : [ 993.092592224478722, 1317.743585169315338, 80.0, 22.0 ],
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
					"patching_rect" : [ 944.433330682913265, 1278.743585169315338, 67.703703641891479, 22.0 ],
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
					"patching_rect" : [ 916.699992744127712, 159.652654767036438, 50.0, 22.0 ],
					"text" : "87"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 841.699992744127712, 159.652654767036438, 50.0, 22.0 ],
					"text" : "280"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 855.199992744127712, 114.652654767036438, 63.0, 22.0 ],
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
					"patching_rect" : [ 916.699992744127712, 200.152654767036438, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 916.699992744127712, 238.652654767036438, 69.0, 22.0 ],
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
					"patching_rect" : [ 841.699992744127712, 204.152654767036438, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 841.699992744127712, 238.652654767036438, 66.0, 22.0 ],
					"text" : "vzoom $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 642.699992744127712, 52.61410915851593, 109.0, 20.0 ],
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
					"patching_rect" : [ 706.699992744127712, 198.652654767036438, 50.0, 22.0 ],
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
					"patching_rect" : [ 647.199992744127712, 198.652654767036438, 50.0, 22.0 ],
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
					"patching_rect" : [ 647.199992744127712, 161.652654767036438, 138.0, 22.0 ],
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
					"patching_rect" : [ 647.199992744127712, 79.652654767036438, 161.0, 70.0 ],
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
					"patching_rect" : [ 647.199992744127712, 237.652654767036438, 178.0, 36.0 ],
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
					"patching_rect" : [ 766.866663183768196, 1296.039881527423859, 65.0, 22.0 ],
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
					"patching_rect" : [ 766.866663183768196, 1266.743585169315338, 65.0, 22.0 ],
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
					"patching_rect" : [ 678.083329434195775, 1296.039881527423859, 65.0, 22.0 ],
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
					"patching_rect" : [ 678.083329434195775, 1266.743585169315338, 65.0, 22.0 ],
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
					"patching_rect" : [ 589.299995684623354, 1296.039881527423859, 65.0, 22.0 ],
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
					"patching_rect" : [ 589.299995684623354, 1266.743585169315338, 65.0, 22.0 ],
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
					"patching_rect" : [ 3013.384681701660156, 452.615409851074219, 109.100002497434616, 22.0 ],
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
					"patching_rect" : [ 2885.999998182058334, 437.42310905456543, 107.100002497434616, 22.0 ],
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
					"patching_rect" : [ 1875.653806686401367, 155.000001907348633, 63.846155166625977, 22.0 ],
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
					"patching_rect" : [ 1875.653806686401367, 124.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 1875.653806686401367, 97.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 1607.461462020874023, 129.076919555664063, 97.692312240600586, 22.0 ],
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
					"patching_rect" : [ 1607.461462020874023, 96.846149444580078, 94.615388870239258, 22.0 ],
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
					"patching_rect" : [ 1519.653806686401367, 93.652654767036438, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1519.653806686401367, 130.0, 71.0, 22.0 ],
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
					"patching_rect" : [ 2633.899995684623718, 437.42310905456543, 117.100002497434616, 22.0 ],
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
					"patching_rect" : [ 1743.653806686401367, 130.0, 44.0, 21.0 ],
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
					"patching_rect" : [ 1743.653806686401367, 103.0, 125.0, 21.0 ],
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
					"patching_rect" : [ 1722.153806686401367, 184.0, 137.0, 23.0 ],
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
					"patching_rect" : [ 1743.653806686401367, 73.5, 57.0, 21.0 ],
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
					"patching_rect" : [ 1743.653806686401367, 45.0, 63.0, 21.0 ],
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
					"patching_rect" : [ 1743.653806686401367, 16.0, 42.0, 21.0 ],
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
					"patching_rect" : [ 1722.153806686401367, 16.0, 18.0, 152.0 ],
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
					"patching_rect" : [ 2709.461544036865234, 413.230768203735352, 138.200004994869232, 22.0 ],
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
					"patching_rect" : [ 589.383326936760795, 1213.143590688705444, 551.70000249743498, 22.0 ],
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
					"patching_rect" : [ 621.792210239171254, 878.102566182613373, 64.0, 22.0 ],
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
					"patching_rect" : [ 1327.038429260253906, 129.076919555664063, 50.0, 22.0 ],
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
					"patching_rect" : [ 1386.038429260253906, 138.901191771030426, 78.787880778312683, 22.0 ],
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
					"patching_rect" : [ 1670.999998182058334, 894.153850555419922, 137.0, 22.0 ],
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
					"patching_rect" : [ 1425.0, 866.0, 111.5, 22.0 ],
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
					"patching_rect" : [ 2858.999998182058334, 393.0, 95.200004994869232, 22.0 ],
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
					"patching_rect" : [ 3065.048582677046397, 419.230768203735352, 96.200004994869232, 22.0 ],
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
					"patching_rect" : [ 1204.396297037601471, 153.652654767036438, 41.603702962398529, 22.0 ],
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
					"patching_rect" : [ 879.0, 442.0, 734.0, 312.0 ],
					"pitcheditrange" : [ "null" ],
					"showplayhead" : 1,
					"stafflines" : [ 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tonedivision" : 16,
					"versionnumber" : 80100,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 17.0, 17.0 ],
					"vzoom" : 280.0,
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "color", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "[", "none", "before", "after", "]", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080049664, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084218368, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1072798105, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 774907727, 1084594962, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1072902963, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2555546762, 1084928762, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1073007820, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085279488, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1073794252, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085433088, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1073846681, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085540864, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1073899110, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085642240, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1074318540, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085765120, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1074370969, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880064, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1074423398, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1074816614, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086091776, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1074842828, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086202112, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1074869043, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325632, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075078758, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086391680, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1075104972, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086444032, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075131187, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086488576, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075340902, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086547072, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1075367116, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086592768, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075393331, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086650752, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075603046, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086707200, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1075629260, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086762240, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075655475, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3280992292, 1086800098, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075852083, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086865920, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075865190, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086934912, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1075878297, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086995584, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1075983155, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087050368, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075996262, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087100032, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076009369, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087156736, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076114227, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087208704, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076127334, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087260928, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076140441, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324032, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076245299, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087377664, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076258406, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087401664, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076271513, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087437440, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076376371, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087463040, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076389478, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087488192, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076402585, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087517952, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076507443, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087540160, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076520550, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087573760, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076533657, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087603520, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076638515, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087630400, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076651622, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087656512, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076664729, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087684992, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076769587, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087710400, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1076782694, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087737920, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076795801, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087767488, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1076894105, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087797184, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1076900659, "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087819904, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1076907212, "none", "]", "]", "[", "midichannels", 2, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084218368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 1318470079, 1081186205, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 611156795, 1084229413, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890182, "_x_x_x_x_bach_float64_x_x_x_x_", 3908393621, 1082257404, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2015815677, 1084525172, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 1620309276, 1080101339, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3312236393, 1084527087, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989254, "_x_x_x_x_bach_float64_x_x_x_x_", 3204404820, 1080115797, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 774907727, 1084594962, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069126, "_x_x_x_x_bach_float64_x_x_x_x_", 963465926, 1081281544, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 41493996, 1084600272, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085988742, "_x_x_x_x_bach_float64_x_x_x_x_", 3757627604, 1080204160, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2203639297, 1084717576, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085888646, "_x_x_x_x_bach_float64_x_x_x_x_", 3507558122, 1081814615, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2555546762, 1084928762, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 4196164506, 1082513634, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3733776793, 1084932770, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 64367400, 1082452335, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085279488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086174086, "_x_x_x_x_bach_float64_x_x_x_x_", 2554740316, 1080128555, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1116015124, 1085282209, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 1058122186, 1081870658, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 166800411, 1085398201, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 2849936931, 1080103300, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1707554727, 1085398585, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086300806, "_x_x_x_x_bach_float64_x_x_x_x_", 3067178693, 1080172997, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085433088, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086251270, "_x_x_x_x_bach_float64_x_x_x_x_", 932970829, 1081088426, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 163239326, 1085433157, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070150, "_x_x_x_x_bach_float64_x_x_x_x_", 1954184639, 1081190377, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 967004499, 1085508173, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086169478, "_x_x_x_x_bach_float64_x_x_x_x_", 2306748975, 1078998515, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085540864, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086169734, "_x_x_x_x_bach_float64_x_x_x_x_", 3941100862, 1080513368, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3823145364, 1085590635, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086248582, "_x_x_x_x_bach_float64_x_x_x_x_", 3746821226, 1080584364, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1380773008, 1085592043, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086123142, "_x_x_x_x_bach_float64_x_x_x_x_", 1575052651, 1080586903, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085642240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 2402026789, 1080504887, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1348003091, 1085682268, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085944198, "_x_x_x_x_bach_float64_x_x_x_x_", 4108541362, 1079211125, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 695512233, 1085704185, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086173446, "_x_x_x_x_bach_float64_x_x_x_x_", 1276300801, 1081112162, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085765120, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085889670, "_x_x_x_x_bach_float64_x_x_x_x_", 2287466355, 1081611687, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880064, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085935238, "_x_x_x_x_bach_float64_x_x_x_x_", 4220659931, 1079066212, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 133753307, 1085880763, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085911174, "_x_x_x_x_bach_float64_x_x_x_x_", 3180356380, 1079116522, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 1627146681, 1081401000, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3331624213, 1085979647, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 4088751675, 1081387223, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2249180316, 1086060266, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 2081347902, 1079952734, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2385591202, 1086061291, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085990022, "_x_x_x_x_bach_float64_x_x_x_x_", 2584092566, 1080036878, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086091776, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086069894, "_x_x_x_x_bach_float64_x_x_x_x_", 4294967286, 1081798655, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 932412214, 1086094166, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085990278, "_x_x_x_x_bach_float64_x_x_x_x_", 84583763, 1079920862, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1671973321, 1086130446, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 376646759, 1081207375, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086202112, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 57172986, 1082061018, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4201065499, 1086202452, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086326275, "_x_x_x_x_bach_float64_x_x_x_x_", 265332331, 1078588074, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325632, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086171014, "_x_x_x_x_bach_float64_x_x_x_x_", 2118439978, 1079986024, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3753207228, 1086327314, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890182, "_x_x_x_x_bach_float64_x_x_x_x_", 3294333942, 1081537899, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1300723480, 1086372573, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086299782, "_x_x_x_x_bach_float64_x_x_x_x_", 1622450703, 1080238492, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1233149106, 1086373067, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 2682835821, 1080175917, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086391680, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070918, "_x_x_x_x_bach_float64_x_x_x_x_", 3513701381, 1081166287, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1304630050, 1086392344, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086251142, "_x_x_x_x_bach_float64_x_x_x_x_", 2944133338, 1080986943, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4001047502, 1086428834, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086168454, "_x_x_x_x_bach_float64_x_x_x_x_", 3049772343, 1078532137, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086444032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086170246, "_x_x_x_x_bach_float64_x_x_x_x_", 4245938261, 1080370413, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 533775801, 1086467715, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086121350, "_x_x_x_x_bach_float64_x_x_x_x_", 1380204078, 1080231164, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086488576, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 3959043860, 1080418589, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 236425394, 1086510413, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085942918, "_x_x_x_x_bach_float64_x_x_x_x_", 1597799380, 1079152619, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1759366065, 1086510770, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1090588708, 1086124234, "_x_x_x_x_bach_float64_x_x_x_x_", 786768048, 1078455219, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086547072, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 1967508076, 1081591246, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086592768, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085938310, "_x_x_x_x_bach_float64_x_x_x_x_", 1778693177, 1080412954, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086650752, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086071814, "_x_x_x_x_bach_float64_x_x_x_x_", 2217943172, 1081290062, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171553615, 1086652852, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 551422328, 1081248670, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1948358916, 1086690026, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 2947046023, 1082163211, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2683588695, 1086691474, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085989638, "_x_x_x_x_bach_float64_x_x_x_x_", 98030615, 1079948976, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086707200, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989766, "_x_x_x_x_bach_float64_x_x_x_x_", 3126340168, 1080172260, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3703902988, 1086726293, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 2547777187, 1081230269, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086762240, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070406, "_x_x_x_x_bach_float64_x_x_x_x_", 2150966063, 1081433424, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 399586290, 1086762694, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135923, 1086333891, "_x_x_x_x_bach_float64_x_x_x_x_", 321430797, 1078121094, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3280992292, 1086800098, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086170758, "_x_x_x_x_bach_float64_x_x_x_x_", 4022103926, 1080664454, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3565832140, 1086800508, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085890694, "_x_x_x_x_bach_float64_x_x_x_x_", 69643172, 1082205050, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086865920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086300550, "_x_x_x_x_bach_float64_x_x_x_x_", 507910901, 1081161097, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2618295458, 1086865977, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 4175740134, 1081629511, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3651889767, 1086895446, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086378051, "_x_x_x_x_bach_float64_x_x_x_x_", 1689901581, 1080444516, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1870336280, 1086913564, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086338371, "_x_x_x_x_bach_float64_x_x_x_x_", 1927160479, 1080378969, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3688311434, 1086915859, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086069382, "_x_x_x_x_bach_float64_x_x_x_x_", 4266674776, 1081917344, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086934912, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086248838, "_x_x_x_x_bach_float64_x_x_x_x_", 3384353002, 1080582249, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1290520220, 1086958259, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3397152638, 1086352374, "_x_x_x_x_bach_float64_x_x_x_x_", 1708126808, 1079402907, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4033963206, 1086971049, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 3004447049, 1080457300, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086995584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086195334, "_x_x_x_x_bach_float64_x_x_x_x_", 907240718, 1080264108, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1930691587, 1087016217, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086169990, "_x_x_x_x_bach_float64_x_x_x_x_", 1434594459, 1079847710, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2627952559, 1087030815, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086297990, "_x_x_x_x_bach_float64_x_x_x_x_", 125026102, 1080667868, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1457034996, 1087030906, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086118534, "_x_x_x_x_bach_float64_x_x_x_x_", 3992820876, 1080139798, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087050368, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086071814, "_x_x_x_x_bach_float64_x_x_x_x_", 3886260698, 1080275385, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1583599404, 1087069546, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086119302, "_x_x_x_x_bach_float64_x_x_x_x_", 3920633688, 1079301071, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1883864576, 1087079998, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086172038, "_x_x_x_x_bach_float64_x_x_x_x_", 2393805297, 1080332005, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087100032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086196102, "_x_x_x_x_bach_float64_x_x_x_x_", 3216940317, 1080142211, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4060613599, 1087117451, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086248582, "_x_x_x_x_bach_float64_x_x_x_x_", 1916664637, 1079636304, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1181452527, 1087119528, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086069638, "_x_x_x_x_bach_float64_x_x_x_x_", 825370469, 1079251723, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2631346562, 1087129380, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086299526, "_x_x_x_x_bach_float64_x_x_x_x_", 1334169815, 1080686353, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1556999486, 1087129806, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086072454, "_x_x_x_x_bach_float64_x_x_x_x_", 1530658963, 1080611646, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087156736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086194310, "_x_x_x_x_bach_float64_x_x_x_x_", 2150448024, 1080458459, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3670752960, 1087178830, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 1295011828, 1080896585, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087208704, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 2493960687, 1081707890, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4219131005, 1087209807, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086333251, "_x_x_x_x_bach_float64_x_x_x_x_", 15061836, 1079039721, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087260928, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086250118, "_x_x_x_x_bach_float64_x_x_x_x_", 3845414953, 1081123187, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2252117826, 1087261035, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071942, "_x_x_x_x_bach_float64_x_x_x_x_", 3207503690, 1080919896, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2873998563, 1087295170, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 4236769349, 1080922845, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324032, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086171526, "_x_x_x_x_bach_float64_x_x_x_x_", 4030495411, 1080264285, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3546198913, 1087325110, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085941894, "_x_x_x_x_bach_float64_x_x_x_x_", 1831396999, 1080791336, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1964201755, 1087353339, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085943686, "_x_x_x_x_bach_float64_x_x_x_x_", 1576594076, 1080765864, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2646994345, 1087353948, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086171782, "_x_x_x_x_bach_float64_x_x_x_x_", 4035898598, 1081165680, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087377664, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086193798, "_x_x_x_x_bach_float64_x_x_x_x_", 311053626, 1079064270, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 839936274, 1087377747, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085890438, "_x_x_x_x_bach_float64_x_x_x_x_", 2078653280, 1081563955, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087401664, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 3047749033, 1081108748, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1559963450, 1087418716, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086299014, "_x_x_x_x_bach_float64_x_x_x_x_", 2128709742, 1081229259, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2458040459, 1087419404, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086195078, "_x_x_x_x_bach_float64_x_x_x_x_", 1328763888, 1081137689, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087437440, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 141167298, 1080869491, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1921551479, 1087437453, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086251142, "_x_x_x_x_bach_float64_x_x_x_x_", 1539948561, 1080976701, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3859862550, 1087452164, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 4153800032, 1080376716, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2400489001, 1087453292, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085990790, "_x_x_x_x_bach_float64_x_x_x_x_", 3654879799, 1080269014, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087463040, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 2516283116, 1081684358, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2859055522, 1087463325, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085989254, "_x_x_x_x_bach_float64_x_x_x_x_", 3852342580, 1079955639, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2474377835, 1087471302, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 3931242296, 1081143528, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087488192, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086334147, "_x_x_x_x_bach_float64_x_x_x_x_", 2331476967, 1079362198, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3702341158, 1087488839, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 1957571426, 1081901993, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 875529281, 1087497085, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086298246, "_x_x_x_x_bach_float64_x_x_x_x_", 2484905115, 1081374291, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087517952, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086169734, "_x_x_x_x_bach_float64_x_x_x_x_", 23009437, 1080136442, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3952671306, 1087518608, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890950, "_x_x_x_x_bach_float64_x_x_x_x_", 80780389, 1081493933, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2127628749, 1087527055, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086189702, "_x_x_x_x_bach_float64_x_x_x_x_", 1531858062, 1080729791, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087540160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071430, "_x_x_x_x_bach_float64_x_x_x_x_", 3410054776, 1082727651, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1777679240, 1087540342, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086301062, "_x_x_x_x_bach_float64_x_x_x_x_", 1556451063, 1080931435, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 414966361, 1087553503, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086376963, "_x_x_x_x_bach_float64_x_x_x_x_", 3712443516, 1080245548, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 43198390, 1087562867, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086340163, "_x_x_x_x_bach_float64_x_x_x_x_", 349514220, 1080378597, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087573760, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086249094, "_x_x_x_x_bach_float64_x_x_x_x_", 1249069235, 1080837210, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1857362963, 1087584378, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086355651, "_x_x_x_x_bach_float64_x_x_x_x_", 2134933844, 1079587874, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3169919143, 1087591537, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086298246, "_x_x_x_x_bach_float64_x_x_x_x_", 928681472, 1080557063, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087603520, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086204550, "_x_x_x_x_bach_float64_x_x_x_x_", 3909869408, 1080214095, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 482908568, 1087613595, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086168454, "_x_x_x_x_bach_float64_x_x_x_x_", 4017922053, 1079911326, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2728459014, 1087621712, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086121094, "_x_x_x_x_bach_float64_x_x_x_x_", 2475994657, 1080024223, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087630400, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086072710, "_x_x_x_x_bach_float64_x_x_x_x_", 1044673421, 1081163960, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3540083415, 1087640997, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086119814, "_x_x_x_x_bach_float64_x_x_x_x_", 2464999795, 1079650654, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2255707521, 1087648051, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1086170246, "_x_x_x_x_bach_float64_x_x_x_x_", 706585605, 1080174997, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1971284448, 1087649074, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889414, "_x_x_x_x_bach_float64_x_x_x_x_", 2014216223, 1081204698, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087656512, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086191878, "_x_x_x_x_bach_float64_x_x_x_x_", 2137118619, 1080184683, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1241871788, 1087666352, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086247558, "_x_x_x_x_bach_float64_x_x_x_x_", 2933536499, 1079527207, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2759982912, 1087666991, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071174, "_x_x_x_x_bach_float64_x_x_x_x_", 2389735423, 1078734127, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087684992, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890054, "_x_x_x_x_bach_float64_x_x_x_x_", 3084415895, 1080294661, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 766826966, 1087693187, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086299014, "_x_x_x_x_bach_float64_x_x_x_x_", 3956705878, 1081567849, 100, 0, "]", 0, "]", "[" ],
					"whole_roll_data_0000000001" : [ "_x_x_x_x_bach_float64_x_x_x_x_", 2521152083, 1087693430, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086070662, "_x_x_x_x_bach_float64_x_x_x_x_", 1855023946, 1081119322, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087710400, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086071686, "_x_x_x_x_bach_float64_x_x_x_x_", 884102128, 1081797675, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 379929035, 1087710911, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 339135924, 1086334275, "_x_x_x_x_bach_float64_x_x_x_x_", 1153780781, 1079060881, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 881103510, 1087720505, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086299270, "_x_x_x_x_bach_float64_x_x_x_x_", 3545904335, 1081151925, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087737920, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086250118, "_x_x_x_x_bach_float64_x_x_x_x_", 780649549, 1080990969, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2830203212, 1087737968, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086072966, "_x_x_x_x_bach_float64_x_x_x_x_", 2466383724, 1080841980, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1882710102, 1087754034, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085889926, "_x_x_x_x_bach_float64_x_x_x_x_", 1806821419, 1080593338, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087767488, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086170502, "_x_x_x_x_bach_float64_x_x_x_x_", 235635779, 1080201255, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 264200438, 1087767502, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085941894, "_x_x_x_x_bach_float64_x_x_x_x_", 1352340097, 1080835383, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2120259355, 1087781960, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271846, 1085943942, "_x_x_x_x_bach_float64_x_x_x_x_", 334456716, 1080723382, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3424899235, 1087782611, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1086172294, "_x_x_x_x_bach_float64_x_x_x_x_", 4045742498, 1080924967, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087797184, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085890182, "_x_x_x_x_bach_float64_x_x_x_x_", 1595124755, 1081522870, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087819904, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085990022, "_x_x_x_x_bach_float64_x_x_x_x_", 2207322425, 1079731827, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 648390603, 1087825555, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271848, 1085889158, "_x_x_x_x_bach_float64_x_x_x_x_", 4173267731, 1081023153, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1029115564, 1087826006, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 678271847, 1085763718, "_x_x_x_x_bach_float64_x_x_x_x_", 1417194055, 1080931553, 100, 0, "]", 0, "]", 0, "]" ],
					"whole_roll_data_count" : [ 2 ],
					"zoom" : 87.0
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
					"patching_rect" : [ 1159.499998182058334, 1134.599994480609894, 117.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "at.onsets2bach.js",
						"parameter_enable" : 0
					}
,
					"text" : "js at.onsets2bach.js"
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
					"patching_rect" : [ 556.299995684623354, 942.0, 239.0, 22.0 ],
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
					"midpoints" : [ 565.799995684623354, 1196.071795344352722, 598.883326936760795, 1196.071795344352722 ],
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
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-196", 0 ]
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
					"midpoints" : [ 866.799995684623354, 1024.461536407470703, 1081.149997842311677, 1024.461536407470703, 1081.149997842311677, 888.0, 1278.799995684623354, 888.0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-32", 0 ]
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
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-41", 0 ]
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
					"midpoints" : [ 1168.999998182058334, 1187.052563548088074, 598.883326936760795, 1187.052563548088074 ],
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
				"name" : "at.onsets2bach.js",
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
				"name" : "at.bach2onset.js",
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
