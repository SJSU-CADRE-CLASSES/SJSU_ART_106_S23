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
		"rect" : [ 34.0, 87.0, 668.0, 634.0 ],
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
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.62866700000643, 74.603175759315491, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.628667000006317, 156.0, 154.0, 20.0 ],
					"text" : "<- Drop C74 PBR materials"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 422.166667000002576, 56.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 422.166667000002576, 30.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 305.62866700000643, 104.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.62866700000643, 534.288660000000164, 301.0, 35.0 ],
					"text" : "jit.gl.light @type point @diffuse 0 1 1 @specular 0. 1 1 @position 1 -1. 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.62866700000643, 497.288660000000164, 298.0, 35.0 ],
					"text" : "jit.gl.light @type point @diffuse 1 0 1 @specular 1 1 0 @position 0. 1. -1"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 15,
					"id" : "obj-12",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 422.166667000002576, 82.706864338367097, 160.462000000003854, 43.793135661632903 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.725541114807129, 0.662468135356903, 0.616564691066742, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 0.300000011920929, 0.300000011920929, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 1.0, 1.0, 1.0, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 0.0, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 2.089999914169312, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 0.5, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "triplanar", 5, "obj-7", "number", "int", 0, 5, "<invalid>", "number", "int", 3 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.274509817361832, 0.361948430538177, 0.629359662532806, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 2.0, 3.5, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 1.0, 1.0, 1.0, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 0.180000007152557, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 0.800000011920929, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 1.0, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "none", 5, "obj-7", "number", "int", 1, 5, "<invalid>", "number", "int", 2 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.678431391716003, 0.65714818239212, 0.585693359375, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 2.0, 2.0, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 0.772972464561462, 0.767198622226715, 0.715173423290253, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 0.300000011920929, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 6.400000095367432, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 1.0, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "none", 5, "obj-7", "number", "int", 2, 5, "<invalid>", "number", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.184313729405403, 0.18525955080986, 0.274051159620285, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 10.0, 10.0, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 1.0, 1.0, 1.0, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 1.0, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 0.219999998807907, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 0.300000011920929, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "biplanar", 5, "obj-7", "number", "int", 3, 5, "<invalid>", "number", "int", 0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.760784327983856, 0.549185216426849, 0.554453313350677, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 1.0, 1.0, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 1.0, 1.0, 1.0, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 0.0, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 0.5, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 0.5, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "biplanar", 5, "obj-7", "number", "int", 9, 5, "<invalid>", "attrui", "attr", "self_shadow", 5, "<invalid>", "attrui", "int", 0, 5, "<invalid>", "attrui", "attr", "parallax", 5, "<invalid>", "attrui", "int", 0, 5, "<invalid>", "number", "int", 2 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.396078437566757, 0.67603474855423, 0.51870995759964, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 3.0, 4.0, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 1.0, 1.0, 1.0, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 0.0, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 1.0, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 1.0, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "none", 5, "obj-7", "number", "int", 7, 5, "<invalid>", "number", "int", 2 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.396078437566757, 0.67603474855423, 0.51870995759964, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 1.0, 1.0, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 0.403535395860672, 0.476573288440704, 0.37502658367157, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 1.0, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 0.389999985694885, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 1.0, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "none", 5, "obj-7", "number", "int", 8, 5, "<invalid>", "attrui", "attr", "self_shadow", 5, "<invalid>", "attrui", "int", 0, 5, "<invalid>", "attrui", "attr", "parallax", 5, "<invalid>", "attrui", "int", 0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-28", "attrui", "attr", "erase_color", 8, "obj-28", "attrui", "list", 0.745976686477661, 0.803777396678925, 0.843391358852386, 1.0, 5, "obj-5", "attrui", "attr", "tex_repeat", 6, "obj-5", "attrui", "list", 2.0, 2.0, 5, "obj-2", "attrui", "attr", "auto_rotate", 5, "obj-2", "attrui", "int", 0, 5, "obj-77", "toggle", "int", 1, 5, "obj-1", "attrui", "attr", "floating", 5, "obj-1", "attrui", "int", 0, 5, "obj-6", "attrui", "attr", "mat_emission", 8, "obj-6", "attrui", "list", 0.0, 0.0, 0.0, 1.0, 5, "obj-16", "attrui", "attr", "mat_diffuse", 8, "obj-16", "attrui", "list", 0.746701598167419, 0.45172992348671, 0.226734399795532, 1.0, 5, "obj-53", "attrui", "attr", "metalness", 5, "obj-53", "attrui", "float", 0.0, 5, "obj-56", "attrui", "attr", "roughness", 5, "obj-56", "attrui", "float", 1.0, 5, "obj-18", "attrui", "attr", "gamma_correction", 5, "obj-18", "attrui", "int", 1, 5, "obj-99", "attrui", "attr", "reflection", 5, "obj-99", "attrui", "int", 1, 5, "obj-23", "attrui", "attr", "triplanar_blend", 5, "obj-23", "attrui", "float", 1.0, 5, "obj-21", "attrui", "attr", "tex_gen", 4, "obj-21", "attrui", "none", 5, "obj-7", "number", "int", 11, 5, "<invalid>", "number", "int", 2 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 21.571000000001732, 519.288659793814531, 255.0, 35.0 ],
					"text" : "jit.gl.gridshape @rotatexyz 0 0 0 @shape torus @dim 100 100 @scale 1.2 1.2 1.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 199.62866700000643, 104.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "tex_gen",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 262.025022105104995, 165.0, 23.0 ],
					"text_width" : 77.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "triplanar_blend",
					"id" : "obj-23",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 286.025022105104995, 165.0, 22.0 ],
					"text_width" : 110.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 37.0, 172.0, 77.0, 22.0 ],
									"text" : "jit.anim.node"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 37.0, 143.0, 159.0, 22.0 ],
									"text" : "jit.anim.node @anchor 0 0 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 37.0, 44.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.0, 72.0, 63.0, 22.0 ],
									"text" : "turn 0 -2 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 68.0, 233.0, 73.0, 22.0 ],
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
									"patching_rect" : [ 37.0, 113.0, 76.0, 22.0 ],
									"text" : "jit.anim.drive"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 37.0, 276.0, 285.0, 22.0 ],
									"text" : "jit.gl.camera @tripod 1 @locklook 1 @position 0 0 3"
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
									"patching_rect" : [ 68.0, 201.0, 100.0, 22.0 ],
									"text_width" : 75.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-4", 0 ]
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
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
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
					"patching_rect" : [ 304.62866700000643, 434.28866000000005, 161.0, 22.0 ],
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
					"hidden" : 1,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 305.62866700000643, 354.5, 74.0, 22.0 ],
					"text" : "s pbr-maps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.962000000003854, 489.288659793814531, 97.0, 22.0 ],
					"text" : "r pbr-gridshape"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "bang" ],
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
						"rect" : [ 59.0, 104.0, 293.0, 438.0 ],
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
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 141.855670103092734, 103.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.16666666666606, 100.0, 86.0, 22.0 ],
									"text" : "prepend read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 50.0, 222.855670103092734, 68.0, 22.0 ],
									"text" : "jit.openexr"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.166637666663519, 39.999993035014057, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 304.855660035014012, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-29",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 304.855660035014012, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 0,
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 0,
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"order" : 1,
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"order" : 1,
									"source" : [ "obj-87", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 398.462000000003854, 339.202857156651362, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p openexr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 398.62866700000643, 279.405722313302704, 80.0, 20.0 ],
					"text" : "environment"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 398.62866700000643, 267.905722313302704, 80.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.62866700000643, 459.288660000000164, 278.0, 22.0 ],
					"text" : "jit.gl.light @type hemisphere @ambient 0.1 0.1 0.1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "pbr.map.chooser.maxpat",
					"numinlets" : 2,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 199.62866700000643, 138.5, 125.0, 146.525022105104995 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"attr" : "reflection",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-99",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 518.462000000003854, 339.202857156651362, 114.0, 23.0 ],
					"text_width" : 83.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.344000000001415, 344.525022105104995, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"attr" : "gamma_correction",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 237.981390232890874, 165.0, 23.0 ],
					"text_width" : 134.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "roughness",
					"id" : "obj-56",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 163.334822402074451, 165.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "metalness",
					"id" : "obj-53",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 139.119299791802291, 165.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "mat_diffuse",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 188.550345012346554, 165.0, 23.0 ],
					"text_width" : 103.5
				}

			}
, 			{
				"box" : 				{
					"attr" : "mat_emission",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 213.765867622618714, 165.0, 23.0 ],
					"text_width" : 104.5
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.571000000001732, 396.644329896907266, 515.0, 23.0 ],
					"text" : "jit.gl.pbr @override 1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "floating",
					"id" : "obj-1",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 51.0, 18.793135661632903, 94.5, 22.0 ],
					"text_width" : 70.5
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 38.5, 90.362090441088583, 55.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.844000000001415, 464.288659793814531, 37.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.5, 18.793135661632903, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"frozen_object_attributes" : 					{
						"rect" : [ 1135, 53, 1775, 533 ]
					}
,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 21.5, 57.793135661632903, 53.0, 22.0 ],
					"text" : "jit.world"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"hint" : "",
					"id" : "obj-93",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 66.5, 19.293135661632903, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "1",
					"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "auto_rotate",
					"id" : "obj-2",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 22.844000000001415, 434.28866000000005, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "tex_repeat",
					"id" : "obj-5",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.571000000001732, 310.025022105104995, 165.178999999998268, 22.0 ],
					"text_width" : 80.428999999998268
				}

			}
, 			{
				"box" : 				{
					"attr" : "erase_color",
					"id" : "obj-28",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 155.071000000001732, 18.793135661632903, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 7 ],
					"midpoints" : [ 407.962000000003854, 380.423593526779314, 527.071000000001732, 380.423593526779314 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
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
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 7 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 527.071000000001732, 380.144329896907266 ],
					"order" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 6 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 456.213857142858899, 380.144329896907266 ],
					"order" : 1,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 5 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 385.356714285716009, 380.144329896907266 ],
					"order" : 2,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 4 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 314.499571428573176, 380.144329896907266 ],
					"order" : 3,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 243.642428571430315, 380.144329896907266 ],
					"order" : 4,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 172.785285714287454, 380.144329896907266 ],
					"order" : 5,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 101.928142857144593, 380.144329896907266 ],
					"order" : 6,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 50.844000000001415, 380.144329896907266, 31.071000000001732, 380.144329896907266 ],
					"order" : 7,
					"source" : [ "obj-73", 0 ]
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
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-78", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 527.962000000003854, 380.423593526779314, 31.071000000001732, 380.423593526779314 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "pbr.map.chooser.maxpat",
				"bootpath" : "C74:/packages/Jitter Tools/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pbr.map.parser.js",
				"bootpath" : "C74:/packages/Jitter Tools/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
