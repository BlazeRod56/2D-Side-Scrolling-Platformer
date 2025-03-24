/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46B3F161
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left) "
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6ED510AD
/// @DnDArgument : "expr" "keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2) "
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2) ;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73DB3E07
/// @DnDArgument : "expr" "keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2) "
/// @DnDArgument : "var" "controls_input_right              "
controls_input_right               = keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2) ;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 324A86F5
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E080E99
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 6B97E2FA
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6E974F3E
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l6E974F3E_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l6E974F3E_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33D922DF
	/// @DnDComment : reset the falling speed$(13_10)on movement Y$(13_10)when you landed on ground
	/// @DnDParent : 6E974F3E
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 063AE923
	/// @DnDParent : 6E974F3E
	var l063AE923_0;
	l063AE923_0 = keyboard_check_pressed(vk_space);
	if (l063AE923_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 781FBC49
		/// @DnDComment : jump
		/// @DnDParent : 063AE923
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 156B32F0
	/// @DnDParent : 6E974F3E
	/// @DnDArgument : "btn" "gp_face1"
	var l156B32F0_0 = 0;
	var l156B32F0_1 = gp_face1;
	if(gamepad_is_connected(l156B32F0_0) && gamepad_button_check_pressed(l156B32F0_0, l156B32F0_1))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67146D66
		/// @DnDComment : jump
		/// @DnDParent : 156B32F0
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4248AF61
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D322698
	/// @DnDParent : 4248AF61
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AA3E79D
		/// @DnDComment : add gravity
		/// @DnDParent : 4D322698
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 568161BD
/// @DnDComment : object is the object being avoided by collision.
/// @DnDApplyTo : {Cuber}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);