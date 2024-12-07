/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 768246A1
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "Trailtype"
/// @DnDArgument : "layer" ""Enemy_Bullet""
instance_create_layer(x, y, "Enemy_Bullet", Trailtype);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 39A0F65C
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lifetime"
lifetime += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6171936A
/// @DnDArgument : "var" "lifetime"
/// @DnDArgument : "op" "3"
if(lifetime <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05C4B977
	/// @DnDParent : 6171936A
	instance_destroy();
}