/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36281E9D
/// @DnDApplyTo : obj_player_parent
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50"
with(obj_player_parent) var l36281E9D_0 = bones >= 50;
if(l36281E9D_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 68737034
	/// @DnDComment : as long as$(13_10)speed 3 was not $(13_10)used, make this$(13_10)available
	/// @DnDParent : 36281E9D
	/// @DnDArgument : "obj" "obj_speed_3"
	/// @DnDSaveInfo : "obj" "obj_speed_3"
	var l68737034_0 = false;
	l68737034_0 = instance_exists(obj_speed_3);
	if(l68737034_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6EEB3486
		/// @DnDParent : 68737034
		/// @DnDArgument : "obj" "obj_tank_1"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_tank_1"
		var l6EEB3486_0 = false;
		l6EEB3486_0 = instance_exists(obj_tank_1);
		if(!l6EEB3486_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CA9CCFA
			/// @DnDApplyTo : obj_player_parent
			/// @DnDParent : 6EEB3486
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "3"
			with(obj_player_parent) var l3CA9CCFA_0 = cooldown <= 0;
			if(l3CA9CCFA_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1282436A
				/// @DnDApplyTo : obj_player_parent
				/// @DnDParent : 3CA9CCFA
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "cooldown"
				with(obj_player_parent) {
				cooldown = 3;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A32D7B8
				/// @DnDApplyTo : obj_player_parent
				/// @DnDParent : 3CA9CCFA
				/// @DnDArgument : "expr" "-50"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bones"
				with(obj_player_parent) {
				bones += -50;
				
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2A4835A8
				/// @DnDParent : 3CA9CCFA
				/// @DnDArgument : "objectid" "obj_turret3"
				/// @DnDArgument : "layer" ""Tank_Turrets""
				/// @DnDSaveInfo : "objectid" "obj_turret3"
				instance_create_layer(0, 0, "Tank_Turrets", obj_turret3);
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 40A60E53
				/// @DnDApplyTo : obj_turret2
				/// @DnDParent : 3CA9CCFA
				with(obj_turret2) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6FE49441
				/// @DnDParent : 3CA9CCFA
				instance_destroy();
			}
		}
	}
}