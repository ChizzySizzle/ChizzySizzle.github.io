/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 65ECDE3C
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 053591B1
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "expr" "-price"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_upgradeData.bones"
	obj_upgradeData.bones += -price;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C9D02DF
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "objectid" "obj_rktLauncher1"
	/// @DnDArgument : "layer" ""Turret_layer""
	/// @DnDSaveInfo : "objectid" "obj_rktLauncher1"
	instance_create_layer(0, 0, "Turret_layer", obj_rktLauncher1);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66CC04B2
	/// @DnDApplyTo : {obj_turret1}
	/// @DnDParent : 65ECDE3C
	with(obj_turret1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 780E3991
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket1E"
	/// @DnDSaveInfo : "objectid" "obj_rocket1E"
	instance_create_layer(x + 0, y + 0, "Instances", obj_rocket1E);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4638D8E7
	/// @DnDApplyTo : {obj_minigun1B}
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun1E"
	/// @DnDSaveInfo : "objectid" "obj_minigun1E"
	with(obj_minigun1B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun1E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5FD17BBD
	/// @DnDApplyTo : {obj_minigun1B}
	/// @DnDParent : 65ECDE3C
	with(obj_minigun1B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 053EA525
	/// @DnDApplyTo : {obj_minigun2B}
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun2E"
	/// @DnDSaveInfo : "objectid" "obj_minigun2E"
	with(obj_minigun2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 744F7676
	/// @DnDApplyTo : {obj_minigun2B}
	/// @DnDParent : 65ECDE3C
	with(obj_minigun2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 511ADF20
	/// @DnDApplyTo : {obj_minigun3B}
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun3E"
	/// @DnDSaveInfo : "objectid" "obj_minigun3E"
	with(obj_minigun3B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun3E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22D2901F
	/// @DnDApplyTo : {obj_minigun3B}
	/// @DnDParent : 65ECDE3C
	with(obj_minigun3B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 02051A9C
	/// @DnDApplyTo : {obj_tank2B}
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_tank2E"
	/// @DnDSaveInfo : "objectid" "obj_tank2E"
	with(obj_tank2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_tank2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 38BF604D
	/// @DnDApplyTo : {obj_tank2B}
	/// @DnDParent : 65ECDE3C
	with(obj_tank2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 092070E6
	/// @DnDApplyTo : {obj_tank3B}
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_tank3E"
	/// @DnDSaveInfo : "objectid" "obj_tank3E"
	with(obj_tank3B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_tank3E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 229F37C0
	/// @DnDApplyTo : {obj_tank3B}
	/// @DnDParent : 65ECDE3C
	with(obj_tank3B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74F714F6
	/// @DnDApplyTo : {obj_railgunB}
	/// @DnDParent : 65ECDE3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_railgunE"
	/// @DnDSaveInfo : "objectid" "obj_railgunE"
	with(obj_railgunB) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_railgunE); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2079E6A9
	/// @DnDApplyTo : {obj_railgunB}
	/// @DnDParent : 65ECDE3C
	with(obj_railgunB) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E602978
	/// @DnDParent : 65ECDE3C
	instance_destroy();
}