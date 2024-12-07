/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 12E92521
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4E515E94
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 323750DA
var l323750DA_0;
l323750DA_0 = mouse_check_button(mb_left);
if (l323750DA_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2A68717C
	/// @DnDParent : 323750DA
	/// @DnDArgument : "obj" "obj_reloadTimer"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_reloadTimer"
	var l2A68717C_0 = false;
	l2A68717C_0 = instance_exists(obj_reloadTimer);
	if(!l2A68717C_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 547D657F
		/// @DnDParent : 2A68717C
		/// @DnDArgument : "var" "rktNum"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "210"
		if(rktNum <= 210)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 0B49EE28
			/// @DnDParent : 547D657F
			image_speed = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 527A10C1
			/// @DnDParent : 547D657F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "rktNum"
			rktNum += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 169433DF
			/// @DnDParent : 547D657F
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "value" "1"
			if(image_index == 1)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7E0863E0
				/// @DnDParent : 169433DF
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "current_bullet"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59014621
			/// @DnDParent : 547D657F
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "value" "5"
			if(image_index == 5)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 165574AA
				/// @DnDParent : 59014621
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "current_bullet"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6351D6E2
			/// @DnDParent : 547D657F
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "value" "9"
			if(image_index == 9)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 74932C35
				/// @DnDParent : 6351D6E2
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "current_bullet"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				instance_create_layer(x + 0, y + 0, "Enemy_Bullet", current_bullet);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4795325D
		/// @DnDParent : 2A68717C
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1FF99C0D
			/// @DnDParent : 4795325D
			/// @DnDArgument : "speed" "0"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 33E05098
			/// @DnDParent : 4795325D
			/// @DnDArgument : "obj" "obj_reloadMessage"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "obj_reloadMessage"
			var l33E05098_0 = false;
			l33E05098_0 = instance_exists(obj_reloadMessage);
			if(!l33E05098_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 055567A6
				/// @DnDParent : 33E05098
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
/// @DnDHash : 6E4CC20B
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 262C7F4E
/// @DnDArgument : "not" "1"
var l262C7F4E_0;
l262C7F4E_0 = mouse_check_button(mb_left);
if (!l262C7F4E_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7B643BA4
	/// @DnDParent : 262C7F4E
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3858FE1C
	/// @DnDParent : 262C7F4E
	/// @DnDArgument : "var" "image_index"
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 147FB63D
	/// @DnDParent : 262C7F4E
	/// @DnDArgument : "var" "rktNum"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "90"
	if(rktNum > 90)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 62D7E645
		/// @DnDParent : 147FB63D
		/// @DnDArgument : "objectid" "obj_reloadTimer"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_reloadTimer"
		instance_create_layer(0, 0, "Turret_layer", obj_reloadTimer);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6593B94A
		/// @DnDParent : 147FB63D
		/// @DnDArgument : "var" "rktNum"
		rktNum = 0;
	}
}