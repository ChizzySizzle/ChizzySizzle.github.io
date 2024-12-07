/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0D03D4D3
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 60B167B3
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0142BCD3
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3302FEB7
var l3302FEB7_0;
l3302FEB7_0 = mouse_check_button(mb_left);
if (l3302FEB7_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D305BC2
	/// @DnDParent : 3302FEB7
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "fireRate"
	if(cooldown > fireRate)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 64C7F8DE
		/// @DnDParent : 0D305BC2
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "current_bullet"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44614E5F
		/// @DnDParent : 0D305BC2
		/// @DnDArgument : "var" "cooldown"
		cooldown = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 5E9F981B
		/// @DnDParent : 0D305BC2
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F9E7B35
		/// @DnDParent : 0D305BC2
		/// @DnDArgument : "soundid" "snd_tankfire"
		/// @DnDSaveInfo : "soundid" "snd_tankfire"
		audio_play_sound(snd_tankfire, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 112351EF
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;