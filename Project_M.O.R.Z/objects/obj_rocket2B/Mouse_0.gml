/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 038498BE
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 02903B06
	/// @DnDParent : 038498BE
	/// @DnDArgument : "obj" "obj_rocket1E"
	/// @DnDSaveInfo : "obj" "obj_rocket1E"
	var l02903B06_0 = false;
	l02903B06_0 = instance_exists(obj_rocket1E);
	if(l02903B06_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 193CF61D
		/// @DnDParent : 02903B06
		/// @DnDArgument : "expr" "-price"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_upgradeData.bones"
		obj_upgradeData.bones += -price;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4715269E
		/// @DnDParent : 02903B06
		/// @DnDArgument : "objectid" "obj_rktLauncher2"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_rktLauncher2"
		instance_create_layer(0, 0, "Turret_layer", obj_rktLauncher2);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 31820881
		/// @DnDApplyTo : {obj_rktLauncher1}
		/// @DnDParent : 02903B06
		with(obj_rktLauncher1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4740AA62
		/// @DnDParent : 02903B06
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_rocket2E"
		/// @DnDSaveInfo : "objectid" "obj_rocket2E"
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket2E);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0A83FAF8
		/// @DnDParent : 02903B06
		instance_destroy();
	}
}