/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69014FC3
/// @DnDComment : are we $(13_10)jumping?
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6B63E44F
	/// @DnDParent : 69014FC3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_jump_1"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_jump_1"
	sprite_index = spr_enemy_jump_1;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3515A2B8
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7F54C355
	/// @DnDParent : 3515A2B8
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_idle_1"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle_1"
	sprite_index = spr_enemy_idle_1;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2669DE25
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l2669DE25_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l2669DE25_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4ED39E0E
	/// @DnDParent : 2669DE25
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 32954E62
		/// @DnDParent : 4ED39E0E
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk_1"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk_1"
		sprite_index = spr_enemy_walk_1;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A9C1426
	/// @DnDParent : 2669DE25
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5DD2E420
		/// @DnDParent : 2A9C1426
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk_1"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk_1"
		sprite_index = spr_enemy_walk_1;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CDF6D20
	/// @DnDParent : 2669DE25
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1E37131F
		/// @DnDParent : 4CDF6D20
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_idle_1"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_idle_1"
		sprite_index = spr_enemy_idle_1;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B4D26A7
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 11B71F07
	/// @DnDParent : 6B4D26A7
	/// @DnDArgument : "xscale" "-1 *  abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1 *  abs(image_xscale);
	image_yscale = image_yscale;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 752343BE
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 1DA660C7
	/// @DnDParent : 752343BE
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = abs(image_xscale);
	image_yscale = image_yscale;
}