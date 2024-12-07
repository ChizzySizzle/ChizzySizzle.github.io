/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FBFC8DB
/// @DnDArgument : "var" "hpcool"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "30"
if(hpcool > 30)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BE7F6DE
	/// @DnDParent : 7FBFC8DB
	/// @DnDArgument : "var" "hpcool"
	hpcool = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C84A757
	/// @DnDParent : 7FBFC8DB
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BB50493
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 7FBFC8DB
	/// @DnDArgument : "expr" "-15"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	with(obj_player_parent) {
	hp += -15;
	
	}
}