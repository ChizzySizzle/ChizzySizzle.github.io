/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 19548515
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 33329E2E
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5F6564B3
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 287909D1
var l287909D1_0;
l287909D1_0 = mouse_check_button(mb_left);
if (l287909D1_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D91C2A9
	/// @DnDParent : 287909D1
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "fireRate"
	if(cooldown > fireRate)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B001711
		/// @DnDParent : 3D91C2A9
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "current_bullet"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B2D2ECE
		/// @DnDParent : 3D91C2A9
		/// @DnDArgument : "var" "cooldown"
		cooldown = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4BB546CB
		/// @DnDParent : 3D91C2A9
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A18819C
		/// @DnDParent : 3D91C2A9
		/// @DnDArgument : "soundid" "snd_minigun2Fire"
		/// @DnDSaveInfo : "soundid" "snd_minigun2Fire"
		audio_play_sound(snd_minigun2Fire, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15FAD723
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;