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
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 55D7CAE5
	/// @DnDParent : 3302FEB7
	/// @DnDArgument : "obj" "obj_reloadTimer"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_reloadTimer"
	var l55D7CAE5_0 = false;
	l55D7CAE5_0 = instance_exists(obj_reloadTimer);
	if(!l55D7CAE5_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D305BC2
		/// @DnDParent : 55D7CAE5
		/// @DnDArgument : "var" "rktNum"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "212"
		if(rktNum <= 212)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 64D7F446
			/// @DnDParent : 0D305BC2
			image_speed = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 274B0EA2
			/// @DnDParent : 0D305BC2
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "rktNum"
			rktNum += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7ED4DA62
			/// @DnDParent : 0D305BC2
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "value" "7"
			if(image_index == 7)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 64C7F8DE
				/// @DnDParent : 7ED4DA62
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "current_bullet"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 34B8CD6E
			/// @DnDParent : 0D305BC2
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "value" "4"
			if(image_index == 4)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2624B50E
				/// @DnDParent : 34B8CD6E
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "current_bullet"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4E652119
			/// @DnDParent : 0D305BC2
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "value" "1"
			if(image_index == 1)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 30199940
				/// @DnDParent : 4E652119
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "current_bullet"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5B29ED76
		/// @DnDParent : 55D7CAE5
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 72C86FBB
			/// @DnDParent : 5B29ED76
			/// @DnDArgument : "speed" "0"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7076FAF0
			/// @DnDParent : 5B29ED76
			/// @DnDArgument : "obj" "obj_reloadMessage"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "obj_reloadMessage"
			var l7076FAF0_0 = false;
			l7076FAF0_0 = instance_exists(obj_reloadMessage);
			if(!l7076FAF0_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5260FA42
				/// @DnDParent : 7076FAF0
				/// @DnDArgument : "objectid" "obj_reloadMessage"
				/// @DnDArgument : "layer" ""Turret_layer""
				/// @DnDSaveInfo : "objectid" "obj_reloadMessage"
				instance_create_layer(0, 0, "Turret_layer", obj_reloadMessage);
			}
		}
	}
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5323F1E9
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 0BBD49A7
/// @DnDArgument : "not" "1"
var l0BBD49A7_0;
l0BBD49A7_0 = mouse_check_button(mb_left);
if (!l0BBD49A7_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52F38045
	/// @DnDParent : 0BBD49A7
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C09B98F
	/// @DnDParent : 0BBD49A7
	/// @DnDArgument : "var" "image_index"
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 745496E6
	/// @DnDParent : 0BBD49A7
	/// @DnDArgument : "var" "rktNum"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "100"
	if(rktNum > 100)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 62ABE154
		/// @DnDParent : 745496E6
		/// @DnDArgument : "objectid" "obj_reloadTimer"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_reloadTimer"
		instance_create_layer(0, 0, "Turret_layer", obj_reloadTimer);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38BA32DE
		/// @DnDParent : 745496E6
		/// @DnDArgument : "var" "rktNum"
		rktNum = 0;
	}
}