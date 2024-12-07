/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 50165A17
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1BBFAA85
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 74E8B4D0
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 6FD6FAFF
var l6FD6FAFF_0;
l6FD6FAFF_0 = mouse_check_button(mb_left);
if (l6FD6FAFF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 628FBE82
	/// @DnDParent : 6FD6FAFF
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "fireRate"
	if(cooldown > fireRate)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 68BF33DC
		/// @DnDParent : 628FBE82
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "current_bullet"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22C6BCDF
		/// @DnDParent : 628FBE82
		/// @DnDArgument : "var" "cooldown"
		cooldown = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 07B233CD
		/// @DnDParent : 628FBE82
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 598F2925
		/// @DnDParent : 628FBE82
		/// @DnDArgument : "soundid" "snd_minigun1Fire"
		/// @DnDSaveInfo : "soundid" "snd_minigun1Fire"
		audio_play_sound(snd_minigun1Fire, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00888F42
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;