/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35A4D172
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "EXcool"
EXcool += -1;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 522D711A
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 79D25050
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4E226A7E
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 32CDE89B
var l32CDE89B_0;
l32CDE89B_0 = mouse_check_button(mb_left);
if (l32CDE89B_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BE87093
	/// @DnDParent : 32CDE89B
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "fireRate"
	if(cooldown > fireRate)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 338B1002
		/// @DnDParent : 2BE87093
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "current_bullet"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60750777
		/// @DnDParent : 2BE87093
		/// @DnDArgument : "var" "cooldown"
		cooldown = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 78AB4792
		/// @DnDParent : 2BE87093
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 21659BD5
		/// @DnDParent : 2BE87093
		/// @DnDArgument : "soundid" "snd_tankfire"
		/// @DnDSaveInfo : "soundid" "snd_tankfire"
		audio_play_sound(snd_tankfire, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 281D1318
/// @DnDArgument : "button" "mb_right"
var l281D1318_0;
l281D1318_0 = mouse_check_button(mb_right);
if (l281D1318_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66B01F66
	/// @DnDParent : 281D1318
	/// @DnDArgument : "var" "EXcool"
	/// @DnDArgument : "op" "3"
	if(EXcool <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 669A995F
		/// @DnDParent : 66B01F66
		/// @DnDArgument : "objind" "obj_vulcanEX"
		/// @DnDSaveInfo : "objind" "obj_vulcanEX"
		instance_change(obj_vulcanEX, true);
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 397F062F
/// @DnDArgument : "obj" "obj_sprayIndicator"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_sprayIndicator"
var l397F062F_0 = false;
l397F062F_0 = instance_exists(obj_sprayIndicator);
if(!l397F062F_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2E4FCF1D
	/// @DnDParent : 397F062F
	/// @DnDArgument : "objectid" "obj_sprayIndicator"
	/// @DnDArgument : "layer" ""controlinfo""
	/// @DnDSaveInfo : "objectid" "obj_sprayIndicator"
	instance_create_layer(0, 0, "controlinfo", obj_sprayIndicator);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B1E6822
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;