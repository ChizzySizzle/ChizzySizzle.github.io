/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 555460D3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lifetime"
lifetime += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35D5D0FE
/// @DnDArgument : "var" "lifetime"
/// @DnDArgument : "op" "3"
if(lifetime <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 07F28490
	/// @DnDParent : 35D5D0FE
	instance_destroy();
}