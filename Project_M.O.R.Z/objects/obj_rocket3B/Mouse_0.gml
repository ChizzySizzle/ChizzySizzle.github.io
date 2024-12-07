/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4ADF2A2F
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0715130F
	/// @DnDParent : 4ADF2A2F
	/// @DnDArgument : "obj" "obj_rocket2E"
	/// @DnDSaveInfo : "obj" "obj_rocket2E"
	var l0715130F_0 = false;
	l0715130F_0 = instance_exists(obj_rocket2E);
	if(l0715130F_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 261BD9F1
		/// @DnDParent : 0715130F
		/// @DnDArgument : "expr" "-price"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_upgradeData.bones"
		obj_upgradeData.bones += -price;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19834E78
		/// @DnDParent : 0715130F
		/// @DnDArgument : "objectid" "obj_rktCommand"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_rktCommand"
		instance_create_layer(0, 0, "Turret_layer", obj_rktCommand);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 599911A8
		/// @DnDApplyTo : {obj_rktLauncher2}
		/// @DnDParent : 0715130F
		with(obj_rktLauncher2) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3C047014
		/// @DnDParent : 0715130F
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_rocket3E"
		/// @DnDSaveInfo : "objectid" "obj_rocket3E"
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket3E);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7EE2AC88
		/// @DnDParent : 0715130F
		instance_destroy();
	}
}