/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2130A0E3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "nuke_cooldown"
nuke_cooldown += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 471EE5DD
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61600C60
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown2"
cooldown2 += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C23C25F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown3"
cooldown3 += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D59A1AE
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown4"
cooldown4 += 1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 358C0AF3
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 25B35E6A
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5DEAE053
/// @DnDArgument : "expr" "nuke_cooldown <= 0"
if(nuke_cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5C064A87
	/// @DnDParent : 5DEAE053
	/// @DnDArgument : "obj" "obj_nukeReady"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_nukeReady"
	var l5C064A87_0 = false;
	l5C064A87_0 = instance_exists(obj_nukeReady);
	if(!l5C064A87_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3FB03A11
		/// @DnDParent : 5C064A87
		/// @DnDArgument : "objectid" "obj_nukeReady"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_nukeReady"
		instance_create_layer(0, 0, "Turret_layer", obj_nukeReady);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 7CCB8FF1
var l7CCB8FF1_0;
l7CCB8FF1_0 = mouse_check_button(mb_left);
if (l7CCB8FF1_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 46258146
	/// @DnDParent : 7CCB8FF1
	/// @DnDArgument : "obj" "obj_reloadTimerCmd"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_reloadTimerCmd"
	var l46258146_0 = false;
	l46258146_0 = instance_exists(obj_reloadTimerCmd);
	if(!l46258146_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70ADA5DE
		/// @DnDParent : 46258146
		/// @DnDArgument : "var" "rktNum"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "80"
		if(rktNum <= 80)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D65E717
			/// @DnDParent : 70ADA5DE
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "2"
			if(cooldown > 2)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6E9275A3
				/// @DnDParent : 6D65E717
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "rktNum"
				rktNum += 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 64B84A58
				/// @DnDParent : 6D65E717
				/// @DnDArgument : "var" "cooldown"
				cooldown = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 69A6EFAE
				/// @DnDParent : 6D65E717
				/// @DnDArgument : "xpos" "mouse_x - 490 + random_range(-75,75)"
				/// @DnDArgument : "ypos" "mouse_y - 570 +random_range(-75,75)"
				/// @DnDArgument : "objectid" "obj_smCmdRocket"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				/// @DnDSaveInfo : "objectid" "obj_smCmdRocket"
				instance_create_layer(mouse_x - 490 + random_range(-75,75), mouse_y - 570 +random_range(-75,75), "Enemy_Bullet", obj_smCmdRocket);
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 7D786B4B
				/// @DnDParent : 6D65E717
				image_speed = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EE071C1
			/// @DnDParent : 70ADA5DE
			/// @DnDArgument : "var" "cooldown4"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "5"
			if(cooldown4 > 5)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 28404D7F
				/// @DnDParent : 7EE071C1
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "rktNum"
				rktNum += 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6C2A9741
				/// @DnDParent : 7EE071C1
				/// @DnDArgument : "var" "cooldown4"
				cooldown4 = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 56FE28F2
				/// @DnDParent : 7EE071C1
				/// @DnDArgument : "xpos" "mouse_x - 490 + random_range(-75,75)"
				/// @DnDArgument : "ypos" "mouse_y - 570 +random_range(-75,75)"
				/// @DnDArgument : "objectid" "obj_smRocket"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				/// @DnDSaveInfo : "objectid" "obj_smRocket"
				instance_create_layer(mouse_x - 490 + random_range(-75,75), mouse_y - 570 +random_range(-75,75), "Enemy_Bullet", obj_smRocket);
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 2895953E
				/// @DnDParent : 7EE071C1
				image_speed = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D1D802A
			/// @DnDParent : 70ADA5DE
			/// @DnDArgument : "var" "cooldown2"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "24"
			if(cooldown2 > 24)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 259E5E5D
				/// @DnDParent : 5D1D802A
				/// @DnDArgument : "var" "cooldown2"
				cooldown2 = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 67E7E4D6
				/// @DnDParent : 5D1D802A
				/// @DnDArgument : "xpos" "mouse_x - 490 + random_range(-100,100)"
				/// @DnDArgument : "ypos" "mouse_y - 570 +random_range(-100,100)"
				/// @DnDArgument : "objectid" "obj_lgCmdRocket"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				/// @DnDSaveInfo : "objectid" "obj_lgCmdRocket"
				instance_create_layer(mouse_x - 490 + random_range(-100,100), mouse_y - 570 +random_range(-100,100), "Enemy_Bullet", obj_lgCmdRocket);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6463324F
			/// @DnDParent : 70ADA5DE
			/// @DnDArgument : "var" "cooldown3"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "32"
			if(cooldown3 > 32)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2751F219
				/// @DnDParent : 6463324F
				/// @DnDArgument : "var" "cooldown3"
				cooldown3 = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 595213C7
				/// @DnDParent : 6463324F
				/// @DnDArgument : "xpos" "mouse_x - 490 + random_range(-15,15)"
				/// @DnDArgument : "ypos" "mouse_y - 570 +random_range(-15,15)"
				/// @DnDArgument : "objectid" "obj_lgRocket"
				/// @DnDArgument : "layer" ""Enemy_Bullet""
				/// @DnDSaveInfo : "objectid" "obj_lgRocket"
				instance_create_layer(mouse_x - 490 + random_range(-15,15), mouse_y - 570 +random_range(-15,15), "Enemy_Bullet", obj_lgRocket);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1551A181
		/// @DnDParent : 46258146
		else
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 75AE7F20
			/// @DnDParent : 1551A181
			/// @DnDArgument : "obj" "obj_reloadMessage"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "obj_reloadMessage"
			var l75AE7F20_0 = false;
			l75AE7F20_0 = instance_exists(obj_reloadMessage);
			if(!l75AE7F20_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1EBD6D41
				/// @DnDParent : 75AE7F20
				/// @DnDArgument : "objectid" "obj_reloadMessage"
				/// @DnDArgument : "layer" ""Turret_layer""
				/// @DnDSaveInfo : "objectid" "obj_reloadMessage"
				instance_create_layer(0, 0, "Turret_layer", obj_reloadMessage);
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 51530142
	/// @DnDParent : 7CCB8FF1
	/// @DnDArgument : "obj" "obj_mouseColliderCmd"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_mouseColliderCmd"
	var l51530142_0 = false;
	l51530142_0 = instance_exists(obj_mouseColliderCmd);
	if(!l51530142_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 64BB841C
		/// @DnDParent : 51530142
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_mouseColliderCmd"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		/// @DnDSaveInfo : "objectid" "obj_mouseColliderCmd"
		instance_create_layer(0, 0, "Enemy_Bullet", obj_mouseColliderCmd);
	}
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 37D9E9DD
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 09C8029E
/// @DnDArgument : "button" "mb_right"
var l09C8029E_0;
l09C8029E_0 = mouse_check_button(mb_right);
if (l09C8029E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C2A700F
	/// @DnDParent : 09C8029E
	/// @DnDArgument : "var" "nuke_cooldown"
	/// @DnDArgument : "op" "3"
	if(nuke_cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6F064CB0
		/// @DnDParent : 2C2A700F
		/// @DnDArgument : "objectid" "obj_nukeTimer"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_nukeTimer"
		instance_create_layer(0, 0, "Turret_layer", obj_nukeTimer);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 76E1D23D
		/// @DnDParent : 2C2A700F
		/// @DnDArgument : "xpos" "mouse_x"
		/// @DnDArgument : "ypos" "mouse_y"
		/// @DnDArgument : "objectid" "obj_NUKE"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		/// @DnDSaveInfo : "objectid" "obj_NUKE"
		instance_create_layer(mouse_x, mouse_y, "Enemy_Bullet", obj_NUKE);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B5AAC17
		/// @DnDParent : 2C2A700F
		/// @DnDArgument : "expr" "2000"
		/// @DnDArgument : "var" "nuke_cooldown"
		nuke_cooldown = 2000;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 0EA354CC
var l0EA354CC_0;
l0EA354CC_0 = mouse_check_button_released(mb_left);
if (l0EA354CC_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B64E85A
	/// @DnDParent : 0EA354CC
	/// @DnDArgument : "var" "rktNum"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "60"
	if(rktNum > 60)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 406DBC69
		/// @DnDParent : 1B64E85A
		/// @DnDArgument : "objectid" "obj_reloadTimerCmd"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_reloadTimerCmd"
		instance_create_layer(0, 0, "Turret_layer", obj_reloadTimerCmd);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A217A0C
		/// @DnDParent : 1B64E85A
		/// @DnDArgument : "var" "rktNum"
		rktNum = 0;
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 42699A96
	/// @DnDParent : 0EA354CC
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76A99F0B
	/// @DnDParent : 0EA354CC
	/// @DnDArgument : "var" "image_index"
	image_index = 0;
}