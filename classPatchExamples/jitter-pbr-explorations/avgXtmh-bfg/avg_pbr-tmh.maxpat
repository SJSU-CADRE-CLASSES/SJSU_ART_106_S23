{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 77.0, 97.0, 841.0, 467.0 ],
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
					"attr" : "roughness",
					"id" : "obj-16",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 179.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 404.0, 46.0, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 0.0, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 4.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 15.994000434875488, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.cell", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 30.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 0.0, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 4.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 23.844001770019531, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.voronoi.crackle", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 30.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 0.5, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 4.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 32.393001556396484, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.voronoi.crackle", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 30.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 0.5, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 2.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 45.260002136230469, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.voronoi.smooth", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 30.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 0.5, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 12.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 58.543003082275391, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.voronoise", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 12.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 1.980000019073486, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 12.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 44.384002685546875, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.voronoise", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 12.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4, 5, "obj-16", "attrui", "attr", "roughness", 5, "obj-16", "attrui", "float", -0.230000004172325 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 1.980000019073486, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 12.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 49.184001922607422, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.simplex", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 12.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4, 5, "obj-16", "attrui", "attr", "roughness", 5, "obj-16", "attrui", "float", -0.230000004172325 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 1.980000019073486, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 12.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 52.518001556396484, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.perlin", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 12.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4, 5, "obj-16", "attrui", "attr", "roughness", 5, "obj-16", "attrui", "float", -0.230000004172325 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-17", "attrui", "attr", "metalness", 5, "obj-17", "attrui", "float", 1.980000019073486, 5, "obj-15", "attrui", "attr", "colorize", 5, "obj-15", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "dim", 6, "obj-1", "attrui", "list", 256, 256, 5, "obj-21", "attrui", "attr", "height_scale", 5, "obj-21", "attrui", "float", 12.0, 5, "obj-12", "attrui", "attr", "time", 5, "obj-12", "attrui", "float", 59.934001922607422, 5, "obj-11", "attrui", "attr", "basis", 4, "obj-11", "attrui", "noise.voronoi.id", 5, "obj-10", "attrui", "attr", "zoom", 5, "obj-10", "attrui", "float", 12.0, 5, "obj-6", "toggle", "int", 1, 5, "obj-65", "umenu", "int", 4, 5, "obj-16", "attrui", "attr", "roughness", 5, "obj-16", "attrui", "float", -0.230000004172325 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 376.5, 302.0, 271.0, 22.0 ],
					"text" : "jit.gl.gridshape @dim 256 256 @position 0.5 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 150.0, 91.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 80.0, 112.0, 1069.0, 525.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 8,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 591.73400000000106, 149.644329896907266, 49.0, 116.0 ],
									"text" : "zl.lookup 0.01 0.006 0.0025 0.0015 0.0013 0.001 0.0007"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 401.73400000000106, 149.644329896907266, 37.0, 129.0 ],
									"text" : "zl.lookup 20 30 60 90 200 500 1500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 903.21400000000267, 149.644329896907266, 44.0, 129.0 ],
									"text" : "zl.lookup 0.04 0.03 0.02 0.01 0.005 0.001 0.001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 752.21400000000267, 149.644329896907266, 126.0, 22.0 ],
									"text" : "zl.lookup 1 2 3 4 5 6 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 213.607000000001221, 149.644329896907266, 45.0, 129.0 ],
									"text" : "zl.lookup 0.01 0.008 0.005 0.003 0.001 0.001 0.0007"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 437.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 388.0, 90.0, 22.0 ],
									"text" : "prepend param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 149.644329896907266, 38.0, 129.0 ],
									"text" : "zl.lookup 20 20 35 50 200 450 1500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 120.644329896907266, 94.0, 20.0 ],
									"text" : "parallax params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 213.607000000001221, 299.0, 99.0, 22.0 ],
									"text" : "parallaxStep $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 299.0, 126.0, 22.0 ],
									"text" : "parallaxIterations $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 771.21400000000267, 127.644329896907266, 102.0, 20.0 ],
									"text" : "occlusion params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 903.21400000000267, 299.0, 115.0, 22.0 ],
									"text" : "occlusionOffset $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 752.21400000000267, 299.0, 134.0, 22.0 ],
									"text" : "occlusionIterations $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 447.23400000000106, 155.644329896907266, 99.0, 20.0 ],
									"text" : "shadows params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 591.73400000000106, 299.0, 98.0, 22.0 ],
									"text" : "shadowStep $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 401.73400000000106, 299.0, 125.0, 22.0 ],
									"text" : "shadowIterations $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 34.0, 39.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 43.5, 101.5, 223.107000000001221, 101.5 ],
									"order" : 4,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 43.5, 102.822164948453633, 761.71400000000267, 102.822164948453633 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 43.5, 102.822164948453633, 912.71400000000267, 102.822164948453633 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 43.5, 101.0, 601.23400000000106, 101.0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 43.5, 101.0, 411.23400000000106, 101.0 ],
									"order" : 3,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 43.5, 97.5, 43.5, 97.5 ],
									"order" : 5,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 411.23400000000106, 354.0, 43.5, 354.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 601.23400000000106, 354.0, 43.5, 354.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 223.107000000001221, 354.0, 43.5, 354.0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 912.71400000000267, 354.0, 43.5, 354.0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 761.71400000000267, 354.0, 43.5, 354.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 43.5, 354.0, 43.5, 354.0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 479.71166700000515, 144.0, 107.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p quality_presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"items" : [ "lo", ",", "mid-lo", ",", "mid", ",", "mid-hi", ",", "hi", ",", "ultra", ",", "non-real-time" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 479.71166700000515, 119.0, 107.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 238.5, 73.0, 43.0, 22.0 ],
					"text" : "jit.time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 376.5, 246.0, 69.0, 22.0 ],
					"text" : "jit.gl.handle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 74.5, 91.0, 70.0, 22.0 ],
					"text" : "jit.gl.texture"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 22.0, 203.0, 208.0, 22.0 ],
					"text" : "jit.gl.bfg @basis noise.cell @zoom 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 22.0, 10.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 22.0, 44.5, 124.0, 35.0 ],
					"text" : "jit.world @erase_color 0 0 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 22.0, 302.0, 167.0, 22.0 ],
					"text" : "jit.gl.gridshape @dim 256 256"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 22.0, 255.0, 303.0, 22.0 ],
					"text" : "jit.gl.pbr @self_shadow 1 @height_scale 4 @parallax 1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "zoom",
					"id" : "obj-10",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 121.0, 144.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "basis",
					"id" : "obj-11",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.0, 144.0, 175.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "time",
					"id" : "obj-12",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 238.5, 104.0, 111.5, 22.0 ],
					"text_width" : 57.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "height_scale",
					"id" : "obj-21",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 248.0, 203.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "dim",
					"id" : "obj-1",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.0, 302.0, 150.0, 22.0 ],
					"text_width" : 65.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "colorize",
					"id" : "obj-15",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 22.0, 173.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "metalness",
					"id" : "obj-17",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 203.0, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 5 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jit.mo.time.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
