/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 56B7A0C8
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B40C99E
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "expr" "-price"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_upgradeData.bones"
	obj_upgradeData.bones += -price;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4219BF0A
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "objectid" "obj_minigun1"
	/// @DnDArgument : "layer" ""Turret_layer""
	/// @DnDSaveInfo : "objectid" "obj_minigun1"
	instance_create_layer(0, 0, "Turret_layer", obj_minigun1);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 550F31F4
	/// @DnDApplyTo : {obj_turret1}
	/// @DnDParent : 56B7A0C8
	with(obj_turret1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6512C109
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_minigun1E"
	/// @DnDSaveInfo : "objectid" "obj_minigun1E"
	instance_create_layer(x + 0, y + 0, "Instances", obj_minigun1E);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E7CA100
	/// @DnDApplyTo : {obj_rocket1B}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket1E"
	/// @DnDSaveInfo : "objectid" "obj_rocket1E"
	with(obj_rocket1B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket1E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 246A9F0D
	/// @DnDApplyTo : {obj_rocket1B}
	/// @DnDParent : 56B7A0C8
	with(obj_rocket1B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E99184E
	/// @DnDApplyTo : {obj_rocket2B}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket2E"
	/// @DnDSaveInfo : "objectid" "obj_rocket2E"
	with(obj_rocket2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 323DBAC7
	/// @DnDApplyTo : {obj_rocket2B}
	/// @DnDParent : 56B7A0C8
	with(obj_rocket2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B2BCE72
	/// @DnDApplyTo : {obj_rocket3B}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rocket3E"
	/// @DnDSaveInfo : "objectid" "obj_rocket3E"
	with(obj_rocket3B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_rocket3E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2569C309
	/// @DnDApplyTo : {obj_rocket3B}
	/// @DnDParent : 56B7A0C8
	with(obj_rocket3B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B71B0B9
	/// @DnDApplyTo : {obj_tank2B}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_tank2E"
	/// @DnDSaveInfo : "objectid" "obj_tank2E"
	with(obj_tank2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_tank2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 148539BB
	/// @DnDApplyTo : {obj_tank2B}
	/// @DnDParent : 56B7A0C8
	with(obj_tank2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 12FB0AF2
	/// @DnDApplyTo : {obj_tank3B}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_tank3E"
	/// @DnDSaveInfo : "objectid" "obj_tank3E"
	with(obj_tank3B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_tank3E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 12CD449B
	/// @DnDApplyTo : {obj_tank3B}
	/// @DnDParent : 56B7A0C8
	with(obj_tank3B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 385D470B
	/// @DnDApplyTo : {obj_railgunB}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_railgunE"
	/// @DnDSaveInfo : "objectid" "obj_railgunE"
	with(obj_railgunB) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_railgunE); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4E7226D6
	/// @DnDApplyTo : {obj_railgunB}
	/// @DnDParent : 56B7A0C8
	with(obj_railgunB) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7F53965B
	/// @DnDApplyTo : {obj_body2B}
	/// @DnDParent : 56B7A0C8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_body2E"
	/// @DnDSaveInfo : "objectid" "obj_body2E"
	with(obj_body2B) {
		instance_create_layer(x + 0, y + 0, "Instances", obj_body2E); 
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 114CA581
	/// @DnDApplyTo : {obj_body2B}
	/// @DnDParent : 56B7A0C8
	with(obj_body2B) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1BBD8847
	/// @DnDParent : 56B7A0C8
	instance_destroy();
}