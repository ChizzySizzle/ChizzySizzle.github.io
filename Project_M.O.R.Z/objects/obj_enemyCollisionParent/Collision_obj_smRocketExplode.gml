/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1BD3FC0A
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "image_index == 5"
with(other) var l1BD3FC0A_0 = image_index == 5;
if(l1BD3FC0A_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 2B79D9C5
	/// @DnDParent : 1BD3FC0A
	/// @DnDArgument : "health" "-7.5"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-7.5);
}