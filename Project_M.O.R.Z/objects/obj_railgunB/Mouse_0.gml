/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 658B738E
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 3A992369
	/// @DnDParent : 658B738E
	/// @DnDArgument : "obj" "obj_body2E"
	/// @DnDSaveInfo : "obj" "obj_body2E"
	var l3A992369_0 = false;
	l3A992369_0 = instance_exists(obj_body2E);
	if(l3A992369_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 76E6CB9C
		/// @DnDParent : 3A992369
		/// @DnDArgument : "obj" "obj_tank3E"
		/// @DnDSaveInfo : "obj" "obj_tank3E"
		var l76E6CB9C_0 = false;
		l76E6CB9C_0 = instance_exists(obj_tank3E);
		if(l76E6CB9C_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 139B387F
			/// @DnDParent : 76E6CB9C
			/// @DnDArgument : "expr" "-price"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "obj_upgradeData.bones"
			obj_upgradeData.bones += -price;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6F8B2BCC
			/// @DnDParent : 76E6CB9C
			/// @DnDArgument : "objectid" "obj_railgun"
			/// @DnDArgument : "layer" ""Turret_layer""
			/// @DnDSaveInfo : "objectid" "obj_railgun"
			instance_create_layer(0, 0, "Turret_layer", obj_railgun);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6AFBDDAC
			/// @DnDApplyTo : {obj_turret3}
			/// @DnDParent : 76E6CB9C
			with(obj_turret3) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 42AF534C
			/// @DnDParent : 76E6CB9C
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_railgunE"
			/// @DnDSaveInfo : "objectid" "obj_railgunE"
			instance_create_layer(x + 0, y + 0, "Instances", obj_railgunE);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7F0CF287
			/// @DnDParent : 76E6CB9C
			instance_destroy();
		}
	}
}