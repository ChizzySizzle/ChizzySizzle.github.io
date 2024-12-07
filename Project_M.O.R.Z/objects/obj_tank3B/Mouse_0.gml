/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 726101C4
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 72E54DB0
	/// @DnDParent : 726101C4
	/// @DnDArgument : "obj" "obj_tank2E"
	/// @DnDSaveInfo : "obj" "obj_tank2E"
	var l72E54DB0_0 = false;
	l72E54DB0_0 = instance_exists(obj_tank2E);
	if(l72E54DB0_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 784A8556
		/// @DnDParent : 72E54DB0
		/// @DnDArgument : "expr" "-price"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_upgradeData.bones"
		obj_upgradeData.bones += -price;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 238E8353
		/// @DnDParent : 72E54DB0
		/// @DnDArgument : "objectid" "obj_turret3"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_turret3"
		instance_create_layer(0, 0, "Turret_layer", obj_turret3);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5242D17D
		/// @DnDApplyTo : obj_turret2
		/// @DnDParent : 72E54DB0
		with(obj_turret2) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0214A24D
		/// @DnDParent : 72E54DB0
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_tank3E"
		/// @DnDSaveInfo : "objectid" "obj_tank3E"
		instance_create_layer(x + 0, y + 0, "Instances", obj_tank3E);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3EB0659C
		/// @DnDParent : 72E54DB0
		instance_destroy();
	}
}