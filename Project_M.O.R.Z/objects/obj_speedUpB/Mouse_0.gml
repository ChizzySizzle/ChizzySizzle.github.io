/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4ED09EBE
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4523E13A
	/// @DnDParent : 4ED09EBE
	/// @DnDArgument : "expr" "-price"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_upgradeData.bones"
	obj_upgradeData.bones += -price;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C15EAA3
	/// @DnDApplyTo : {obj_upgradeData}
	/// @DnDParent : 4ED09EBE
	/// @DnDArgument : "expr" "1.5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speedUp"
	with(obj_upgradeData) {
	speedUp += 1.5;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BA94F5A
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 4ED09EBE
	/// @DnDArgument : "expr" "1.5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speedUp"
	with(obj_player_parent) {
	speedUp += 1.5;
	
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18B05A29
	/// @DnDParent : 4ED09EBE
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_speedUpE"
	/// @DnDSaveInfo : "objectid" "obj_speedUpE"
	instance_create_layer(x + 0, y + 0, "Instances", obj_speedUpE);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0B499358
	/// @DnDParent : 4ED09EBE
	instance_destroy();
}