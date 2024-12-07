/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F8027D4
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "detonate"
detonate += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E73697D
/// @DnDArgument : "var" "detonate"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "14"
if(detonate < 14)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 33360CE9
	/// @DnDParent : 7E73697D
	instance_destroy();
}