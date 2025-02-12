/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 452CCFA5
/// @DnDArgument : "obj" "Cuber"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "Cuber"
var l452CCFA5_0 = false;l452CCFA5_0 = instance_exists(Cuber);if(!l452CCFA5_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2FC8F5E3
	/// @DnDParent : 452CCFA5
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0EA37AFB
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 31A93A63
/// @DnDArgument : "font" "font_opensans"
/// @DnDSaveInfo : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 529CEBBC
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "Cuber.coins"
draw_text(x + 30, y + -15, string("Coins: ") + string(Cuber.coins));