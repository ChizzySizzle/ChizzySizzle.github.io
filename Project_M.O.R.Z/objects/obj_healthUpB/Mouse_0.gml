/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1C80B15F
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3333DDFA
	/// @DnDParent : 1C80B15F
	/// @DnDArgument : "expr" "-price"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_upgradeData.bones"
	obj_upgradeData.bones += -price;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A1E5765
	/// @DnDApplyTo : {obj_upgradeData}
	/// @DnDParent : 1C80B15F
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "healthUp"
	with(obj_upgradeData) {
	healthUp += 20;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C10E340
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 1C80B15F
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "healthUp"
	with(obj_player_parent) {
	healthUp += 20;
	
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3F687A42
	/// @DnDParent : 1C80B15F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_healthUpE"
	/// @DnDSaveInfo : "objectid" "obj_healthUpE"
	instance_create_layer(x + 0, y + 0, "Instances", obj_healthUpE);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5840635A
	/// @DnDParent : 1C80B15F
	instance_destroy();
}