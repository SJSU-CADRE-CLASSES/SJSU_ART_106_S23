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
		"rect" : [ 34.0, 87.0, 655.0, 704.0 ],
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
					"hidden" : 1,
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 552.0, 53.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 530.0, 102.0, 69.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 539.0, 175.5, 65.0, 22.0 ],
					"text" : "random 11"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 515.0, 140.5, 66.0, 22.0 ],
					"text" : "random 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
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
						"rect" : [ 59.0, 104.0, 432.0, 317.0 ],
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
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 138.0, 73.0, 22.0 ],
									"text" : "anim_reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 39.0, 63.0, 296.0, 22.0 ],
									"text" : "jit.anim.drive @ui_listen 1 @ease 0.1 @speed 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 39.0, 181.0, 285.0, 22.0 ],
									"text" : "jit.gl.camera @tripod 1 @locklook 1 @position 0 0 5"
								}

							}
, 							{
								"box" : 								{
									"attr" : "locklook",
									"id" : "obj-44",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 70.0, 106.0, 100.0, 22.0 ],
									"text_width" : 75.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 25.5, 552.288659793814418, 161.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"camera and anim.drive\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.5, 577.288659793814531, 300.0, 22.0 ],
					"text" : "jit.gl.light @type hemisphere @ambient 0.1 0.1 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.5, 627.5, 476.0, 49.0 ],
					"text" : ";\rmax launchbrowser https://github.com/mrdoob/three.js/blob/master/src/geometries/TorusKnotGeometry.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.5, 603.5, 432.0, 20.0 ],
					"text" : "ported from three.js TorusKnotGeometry algorithm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.0, 64.0, 286.0, 33.0 ],
					"text" : "A Torus Knot Geometry example, using jit.gen.\nhttps://en.wikipedia.org/wiki/Torus_knot"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.5, 26.5, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.0, 83.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 123.0, 52.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 550.5, 328.0, 53.0, 125.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.563071310520172, 0.553396701812744, 0.943430721759796, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 0, 5, "<invalid>", "attrui", "attr", "draw_mode", 4, "<invalid>", "attrui", "quad_grid", 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "normal", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.563071310520172, 0.553396701812744, 0.943430721759796, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "position", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.563071310520172, 0.553396701812744, 0.943430721759796, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "<invalid>", "attrui", "attr", "draw_mode", 4, "<invalid>", "attrui", "quad_grid", 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "normal", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-42", "toggle", "int", 1, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.563071310520172, 0.553396701812744, 0.943430721759796, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 0, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 0, 5, "<invalid>", "attrui", "attr", "draw_mode", 4, "<invalid>", "attrui", "quad_grid", 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "position", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.563071310520172, 0.553396701812744, 0.943430721759796, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "position", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.127699956297874, 0.999774515628815, 0.999047458171844, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "normal", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.999995052814484, 1.0, 1.0, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "normal", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.999995052814484, 1.0, 1.0, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "vertex", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.131302371621132, 0.99969744682312, 0.023593800142407, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "vertex", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-42", "toggle", "int", 0, 5, "obj-65", "attrui", "attr", "gl_color", 8, "obj-65", "attrui", "list", 0.000066079199314, 0.001801013946533, 0.998228549957275, 1.0, 5, "obj-34", "attrui", "attr", "smooth_shading", 5, "obj-34", "attrui", "int", 1, 5, "obj-33", "attrui", "attr", "lighting_enable", 5, "obj-33", "attrui", "int", 1, 5, "obj-1", "attrui", "attr", "color_mode", 4, "obj-1", "attrui", "vertex", 5, "obj-19", "attrui", "attr", "auto_colors", 5, "obj-19", "attrui", "int", 1 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 419.5, 140.5, 54.0, 101.5 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 3.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 2.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.300000011920929, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 7.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 9.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.094894394278526, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 3.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 2.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.5, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 2.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 4.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.180000007152557, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 5.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 2.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.300000011920929, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 7.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 1.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.150000005960464, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 17.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 14.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.071000002324581, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 4.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 3.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.200000002980232, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 7.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 9.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.579999983310699, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 7.0, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 17.0, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.100000001490116, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-14", "attrui", "attr", "q", 5, "obj-14", "attrui", "float", 18.899999618530273, 5, "obj-15", "attrui", "attr", "p", 5, "obj-15", "attrui", "float", 6.199999809265137, 5, "obj-31", "attrui", "attr", "r2", 5, "obj-31", "attrui", "float", 0.100000001490116, 5, "obj-30", "attrui", "attr", "r1", 5, "obj-30", "attrui", "float", 2.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 100.5, 110.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.0, 463.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 491.5, 101.0, 22.0 ],
					"text" : "poly_mode $1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
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
						"rect" : [ 535.0, 200.0, 846.0, 672.0 ],
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 85.333312999999976, 50.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.5, 133.0, 52.0, 22.0 ],
									"text" : "plane -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 117.0, 80.0, 204.0, 145.0 ],
									"sync" : 1
								}

							}
, 							{
								"box" : 								{
									"cols" : 512,
									"colwidth" : 114,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 97.333312999999976, 247.0, 719.0, 384.0 ],
									"precision" : 3,
									"rows" : 64
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 85.333312999999976, 15.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 392.625, 300.0, 52.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p debug"
				}

			}
, 			{
				"box" : 				{
					"attr" : "smooth_shading",
					"id" : "obj-34",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.0, 401.0, 181.0, 22.0 ],
					"text_width" : 121.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "r1",
					"id" : "obj-30",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.0, 140.5, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "r2",
					"id" : "obj-31",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.0, 167.5, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "p",
					"id" : "obj-15",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.0, 194.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 20.0, 48.0, 85.0, 22.0 ],
					"text" : "jit.world"
				}

			}
, 			{
				"box" : 				{
					"attr" : "auto_colors",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.0, 328.0, 181.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.5, 448.0, 44.0, 23.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 25.5, 478.0, 168.0, 23.0 ],
					"text" : "jit.gl.handle @auto_rotate 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 261.5, 539.0, 370.0, 23.0 ],
					"text" : "jit.gl.mesh @auto_colors 1 @position 0 0 -3 @auto_tangents 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.0, 15.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "color_mode",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-1",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.0, 353.0, 181.0, 23.0 ],
					"text_width" : 99.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.0, 170.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 20.0, 210.5, 143.0, 22.0 ],
					"text" : "jit.matrix 3 float32 512 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
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
						"classnamespace" : "jit.gen",
						"rect" : [ 553.0, 100.0, 1017.0, 753.0 ],
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
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 823.666666666666629, 725.0, 35.0, 22.0 ],
									"text" : "out 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 559.666666666666629, 725.0, 35.0, 22.0 ],
									"text" : "out 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.333333333333314, 725.0, 35.0, 22.0 ],
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 3,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "jit.gen",
										"rect" : [ 109.0, 169.0, 685.0, 467.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 21,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 23.0, 607.0, 288.0 ],
													"text" : "The MIT License\n\nCopyright © 2010-2022 three.js authors\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the \"Software\"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in\nall copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\nTHE SOFTWARE."
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 130.0, 13.0, 69.0, 22.0 ],
									"text" : "gen license"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 13.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"code" : "// ported from three.js TorusKnotGeometry algorithm\r\n// https://github.com/mrdoob/three.js/blob/master/src/geometries/TorusKnotGeometry.js\r\n// see gen license subpatcher for license information\r\n\r\ncalculatePositionOnCurve(u, p, q, radius) {\n\tcu = cos( u );\n\tsu = sin( u );\n\tquOverP = q / p * u;\n\tcs = cos( quOverP );\n\n\tx = radius * ( 2 + cs ) * 0.5 * cu;\n\ty = radius * ( 2 + cs ) * su * 0.5;\n\tz = radius * sin( quOverP ) * 0.5;\n\treturn vec(x, y, z);\r\n}\r\n\r\nParam r1(1.);\r\nParam r2(0.3);\r\nParam p(2);\r\nParam q(3);\r\n\r\n// the radian \"u\" is used to calculate the position on the torus curve of the current tubular segment\nu = norm.x * p * TWOPI;\n\n// now we calculate two points. P1 is our current position on the curve, P2 is a little farther ahead.\n// these points are used to create a special \"coordinate space\", which is necessary to calculate the \r\n// correct vertex positions\nP1 = calculatePositionOnCurve( u, p, q, r1 );\nP2 = calculatePositionOnCurve( u + 0.01, p, q, r1 );\n\n// calculate orthonormal basis\nT = normalize(P2 - P1);\nN = normalize(P2 + P1);\nB = normalize(cross( T, N ));\nN = normalize(cross( B, T ));\n\n// now calculate the vertices. they are nothing more than an extrusion of the torus curve.\n// because we extrude a shape in the xy-plane, there is no need to calculate a z-value.\nv = norm.y * TWOPI;\ncx = - r2 * cos( v );\ncy = r2 * sin( v );\n\n// now calculate the final vertex position.\n// first we orient the extrusion with our basis vectors, \r\n// then we add it to the current position on the curve\nvertex = P1 + (cx * N) + (cy * B);\n\n// normal (P1 is always the center/origin of the extrusion, \r\n// thus we can use it to calculate the normal)\nnormal =  normalize(vertex - P1);\n\n// uv\nuvs = norm * vec (p*q, 1., 1.); // scale texture coordinates by winding order\n\r\n// debug (can set variable here for convenient debugging)\r\ndebug = N; \r\n\n// output\nout1 = vertex;\nout2 = uvs;\nout3 = normal;\r\nout4 = debug;",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 29.0, 51.0, 815.0, 657.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 721.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-3", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 261.0, 268.0, 194.5, 22.0 ],
					"text" : "jit.gen"
				}

			}
, 			{
				"box" : 				{
					"attr" : "q",
					"id" : "obj-14",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.0, 221.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "dim",
					"id" : "obj-21",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 56.0, 170.0, 169.0, 22.0 ],
					"text_width" : 49.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "lighting_enable",
					"id" : "obj-33",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.0, 377.0, 181.0, 22.0 ],
					"text_width" : 121.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "auto_rotate",
					"id" : "obj-55",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 72.5, 448.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "gl_color",
					"id" : "obj-65",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 364.0, 425.0, 181.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 35.0, 520.5, 271.0, 520.5 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"order" : 1,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 29.5, 249.75, 270.5, 249.75 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"order" : 3,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"order" : 2,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 4,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 5,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 3,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 2,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"order" : 2,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
