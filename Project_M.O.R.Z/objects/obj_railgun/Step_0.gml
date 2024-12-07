/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5C51DA30
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 26BFDE3E
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2DA7BFB4
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 62C43FB0
/// @DnDArgument : "expr" "laserCooldown <= 0 "
if(laserCooldown <= 0 )
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 326CE8BE
	/// @DnDParent : 62C43FB0
	/// @DnDArgument : "obj" "obj_laserReady"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_laserReady"
	var l326CE8BE_0 = false;
	l326CE8BE_0 = instance_exists(obj_laserReady);
	if(!l326CE8BE_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 68AF33CB
		/// @DnDParent : 326CE8BE
		/// @DnDArgument : "objectid" "obj_laserReady"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_laserReady"
		instance_create_layer(0, 0, "Turret_layer", obj_laserReady);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 692340BF
var l692340BF_0;
l692340BF_0 = mouse_check_button(mb_left);
if (l692340BF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F3A2B4C
	/// @DnDParent : 692340BF
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "fireRate"
	if(cooldown > fireRate)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1129466E
		/// @DnDParent : 5F3A2B4C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "current_bullet"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F1EBC7E
		/// @DnDParent : 5F3A2B4C
		/// @DnDArgument : "var" "cooldown"
		cooldown = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 78ED4F85
		/// @DnDParent : 5F3A2B4C
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 264CDA08
		/// @DnDParent : 5F3A2B4C
		/// @DnDArgument : "soundid" "smd_lasercanon"
		/// @DnDSaveInfo : "soundid" "smd_lasercanon"
		audio_play_sound(smd_lasercanon, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 18D749ED
/// @DnDArgument : "button" "mb_right"
var l18D749ED_0;
l18D749ED_0 = mouse_check_button(mb_right);
if (l18D749ED_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 405046AD
	/// @DnDParent : 18D749ED
	/// @DnDArgument : "var" "laserCooldown"
	/// @DnDArgument : "op" "3"
	if(laserCooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 79E30454
		/// @DnDParent : 405046AD
		/// @DnDArgument : "obj" "obj_ChargeUp"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_ChargeUp"
		var l79E30454_0 = false;
		l79E30454_0 = instance_exists(obj_ChargeUp);
		if(!l79E30454_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2EC40400
			/// @DnDParent : 79E30454
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_ChargeUp"
			/// @DnDArgument : "layer" ""controlinfo""
			/// @DnDSaveInfo : "objectid" "obj_ChargeUp"
			instance_create_layer(x + 0, y + 0, "controlinfo", obj_ChargeUp);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 64FD2BAC
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 08E7444A
	/// @DnDApplyTo : {obj_ChargeUp}
	/// @DnDParent : 64FD2BAC
	with(obj_ChargeUp) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 530837C3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 580AEEA0
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "laserCooldown"
laserCooldown += -1;