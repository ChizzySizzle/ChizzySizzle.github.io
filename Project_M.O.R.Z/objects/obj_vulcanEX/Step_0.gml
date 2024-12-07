/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5968A4A2
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 79659D53
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7E1D6DD1
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 48B0FD6C
/// @DnDArgument : "var" "fireRate"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(fireRate >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2181E0D4
	/// @DnDParent : 48B0FD6C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "current_bullet"
	/// @DnDArgument : "layer" ""Enemy_Bullet""
	instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DA6FCE5
	/// @DnDParent : 48B0FD6C
	/// @DnDArgument : "var" "cooldown"
	cooldown = 0;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3D72F389
	/// @DnDParent : 48B0FD6C
	/// @DnDArgument : "soundid" "snd_tankfire"
	/// @DnDSaveInfo : "soundid" "snd_tankfire"
	audio_play_sound(snd_tankfire, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5EAAE85B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;