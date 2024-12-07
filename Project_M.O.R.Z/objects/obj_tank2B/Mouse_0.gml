/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 45FA7474
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13FCAFFE
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "expr" "-price"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_upgradeData.bones"
	obj_upgradeData.bones += -price;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19BC7C68
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "objectid" "obj_turret2"
	/// @DnDArgument : "layer" ""Turret_layer""
	/// @DnDSaveInfo : "objectid" "obj_turret2"
	instance_create_layer(0, 0, "Turret_layer", obj_turret2);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5DE482F2
	/// @DnDApplyTo : {obj_turret1}
	/// @DnDParent : 45FA7474
	with(obj_turret1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 63E437A2
	/// @DnDApplyTo : {obj_tank2B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_tank2E"
	/// @DnDSaveInfo : "objectid" "obj_tank2E"
	with(obj_tank2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_tank2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 650D2765
	/// @DnDApplyTo : {obj_rocket1B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket1E"
	/// @DnDSaveInfo : "objectid" "obj_rocket1E"
	with(obj_rocket1B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket1E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05D54152
	/// @DnDApplyTo : {obj_rocket1B}
	/// @DnDParent : 45FA7474
	with(obj_rocket1B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30937000
	/// @DnDApplyTo : {obj_rocket2B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket2E"
	/// @DnDSaveInfo : "objectid" "obj_rocket2E"
	with(obj_rocket2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3EBFDDE6
	/// @DnDApplyTo : {obj_rocket2B}
	/// @DnDParent : 45FA7474
	with(obj_rocket2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B1B453A
	/// @DnDApplyTo : {obj_rocket3B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket3E"
	/// @DnDSaveInfo : "objectid" "obj_rocket3E"
	with(obj_rocket3B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket3E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 00658E78
	/// @DnDApplyTo : {obj_rocket3B}
	/// @DnDParent : 45FA7474
	with(obj_rocket3B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A235D80
	/// @DnDApplyTo : {obj_minigun1B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun1E"
	/// @DnDSaveInfo : "objectid" "obj_minigun1E"
	with(obj_minigun1B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun1E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48A1E3C0
	/// @DnDApplyTo : {obj_minigun1B}
	/// @DnDParent : 45FA7474
	with(obj_minigun1B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4F1833FC
	/// @DnDApplyTo : {obj_minigun2B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun2E"
	/// @DnDSaveInfo : "objectid" "obj_minigun2E"
	with(obj_minigun2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18FD8B81
	/// @DnDApplyTo : {obj_minigun2B}
	/// @DnDParent : 45FA7474
	with(obj_minigun2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 73903A23
	/// @DnDApplyTo : {obj_minigun3B}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun3E"
	/// @DnDSaveInfo : "objectid" "obj_minigun3E"
	with(obj_minigun3B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun3E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66992213
	/// @DnDApplyTo : {obj_minigun3B}
	/// @DnDParent : 45FA7474
	with(obj_minigun3B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19EB9BB0
	/// @DnDApplyTo : {obj_roverB}
	/// @DnDParent : 45FA7474
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_roverE"
	/// @DnDSaveInfo : "objectid" "obj_roverE"
	with(obj_roverB) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_roverE); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24E5772A
	/// @DnDApplyTo : {obj_roverB}
	/// @DnDParent : 45FA7474
	with(obj_roverB) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4F566F3D
	/// @DnDParent : 45FA7474
	instance_destroy();
}