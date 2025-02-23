/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 460EAC7F
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 66E3F874
/// @DnDArgument : "font" "font_opensans"
/// @DnDSaveInfo : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 017994D1
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 37C80852
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Welcome to the Game""
/// @DnDArgument : "var" "text_data"
draw_text(x + 0, y + 0, string("Welcome to the Game") + string(text_data));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5698305F
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 003C9247
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Let's Begin: ""
/// @DnDArgument : "var" "text_data"
draw_text(x + 0, y + 0, string("Let's Begin: ") + string(text_data));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4B22197B
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_bottom"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);