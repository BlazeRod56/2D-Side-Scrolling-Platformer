/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46B3F161
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left) "
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left) ;

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
/// @DnDArgument : "object" "Grass"
/// @DnDSaveInfo : "object" "Grass"
var l6E974F3E_0 = instance_place(x + 0, y + 2, [Grass]);if ((l6E974F3E_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
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
	var l063AE923_0;l063AE923_0 = keyboard_check_pressed(vk_space);if (l063AE923_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 781FBC49
		/// @DnDComment : jump
		/// @DnDParent : 063AE923
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4248AF61
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D322698
	/// @DnDParent : 4248AF61
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AA3E79D
		/// @DnDComment : add gravity
		/// @DnDParent : 4D322698
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 568161BD
/// @DnDComment : object is the object being avoided by collision. 
/// @DnDApplyTo : {Cuber}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Grass"
/// @DnDSaveInfo : "object" "Grass"
move_and_collide(move_x, move_y, Grass,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F616031
/// @DnDApplyTo : {SpeedPowerUp}
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "powerup_active"
with(SpeedPowerUp) {
powerup_active = false;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AC9CFDF
/// @DnDApplyTo : {SpeedPowerUp}
/// @DnDArgument : "expr" "move_speed"
/// @DnDArgument : "var" "default_move_speed"
with(SpeedPowerUp) {
default_move_speed = move_speed;

}