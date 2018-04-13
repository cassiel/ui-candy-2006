{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 154.0, 167.0, 824.0, 448.0 ],
		"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
		"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Courier",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 5.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"statusbarvisible" : 0,
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
		"style" : "cassiel",
		"subpatcher_template" : "cassiel",
		"showontab" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 615.0, 200.0, 156.0, 30.0 ],
					"style" : "",
					"text" : "(Or select from the Extras menu)",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 285.0, 169.0, 20.0 ],
					"style" : "",
					"text" : "load cassiel.textbrick"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 245.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 285.0, 147.0, 20.0 ],
					"style" : "",
					"text" : "load cassiel.nixies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 225.0, 245.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.101961, 0.101961, 0.6 ],
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 170.0, 180.0, 18.0 ],
					"style" : "",
					"text" : "click to open",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"id" : "obj-20",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 30.0, 55.0, 180.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.101961, 0.101961, 0.6 ],
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 170.0, 180.0, 18.0 ],
					"style" : "",
					"text" : "click to open",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"id" : "obj-19",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 225.0, 55.0, 180.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.101961, 0.101961, 0.6 ],
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 170.0, 180.0, 18.0 ],
					"style" : "",
					"text" : "click to open",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 325.0, 68.0, 20.0 ],
					"style" : "",
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 285.0, 176.0, 20.0 ],
					"style" : "",
					"text" : "load cassiel.krellmixer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 420.0, 245.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"id" : "obj-8",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 420.0, 55.0, 180.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.3 ],
					"fontsize" : 14.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 25.0, 180.0, 20.0 ],
					"style" : "",
					"text" : "cassiel.krellmixer",
					"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.3 ],
					"fontsize" : 14.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 25.0, 180.0, 20.0 ],
					"style" : "",
					"text" : "cassiel.nixies",
					"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.3 ],
					"fontsize" : 14.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 25.0, 180.0, 20.0 ],
					"style" : "",
					"text" : "cassiel.textbrick",
					"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"ignoreclick" : 1,
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "cassiel.krellmixer.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -255.0, -271.0 ],
					"patching_rect" : [ 420.0, 55.0, 180.0, 180.0 ],
					"varname" : "cassiel.textbrick[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"ignoreclick" : 1,
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "cassiel.nixies.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -448.0, -187.0 ],
					"patching_rect" : [ 225.0, 55.0, 180.0, 180.0 ],
					"varname" : "cassiel.textbrick[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"ignoreclick" : 1,
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "cassiel.textbrick.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -506.0, -17.0 ],
					"patching_rect" : [ 30.0, 55.0, 180.0, 180.0 ],
					"varname" : "cassiel.textbrick",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-3::obj-23" : [ "live.gain~", "live.gain~", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "cassiel.textbrick.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/extras/cassiel.ui-candy-2006",
				"patcherrelativepath" : "../extras/cassiel.ui-candy-2006",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick.js",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/jsui",
				"patcherrelativepath" : "../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick-P.xml",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/misc",
				"patcherrelativepath" : "../misc",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick.label-clicker.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick-LM.coll",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/misc",
				"patcherrelativepath" : "../misc",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick-MS.xml",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/misc",
				"patcherrelativepath" : "../misc",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.nixies.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/extras/cassiel.ui-candy-2006",
				"patcherrelativepath" : "../extras/cassiel.ui-candy-2006",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.nixies.js",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/jsui",
				"patcherrelativepath" : "../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.krellmixer.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/extras/cassiel.ui-candy-2006",
				"patcherrelativepath" : "../extras/cassiel.ui-candy-2006",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.krellmixer.js",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/jsui",
				"patcherrelativepath" : "../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.krellmixer.noiser.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ui-candy-2006/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "cassiel",
				"default" : 				{
					"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
						"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Courier" ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel-1",
				"default" : 				{
					"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : [ 0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
						"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Courier" ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "laura-ashley",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.997536, 0.883331, 0.611546, 1.0 ],
					"accentcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"parentstyle" : "slight-danger",
				"multi" : 0
			}
 ],
		"default_bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
		"color" : [ 1.0, 1.0, 1.0, 1.0 ],
		"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
		"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
		"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
		"bgfillcolor_color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
