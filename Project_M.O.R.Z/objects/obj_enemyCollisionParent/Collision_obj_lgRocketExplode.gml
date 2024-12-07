/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55B65374
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "image_index == 5"
with(other) var l55B65374_0 = image_index == 5;
if(l55B65374_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 10813A4C
	/// @DnDParent : 55B65374
	/// @DnDArgument : "health" "-17.5"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-17.5);
}