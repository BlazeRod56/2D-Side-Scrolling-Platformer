/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C29930F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 41E72275
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF0DC7E8"
effect_create_below(7, x + 16, y + 0, 1, $FF0DC7E8 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14841A35
/// @DnDComment : add 1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3EB5D936
/// @DnDArgument : "soundid" "snd_coin_sound"
/// @DnDSaveInfo : "soundid" "snd_coin_sound"
audio_play_sound(snd_coin_sound, 0, 0, 1.0, undefined, 1.0);