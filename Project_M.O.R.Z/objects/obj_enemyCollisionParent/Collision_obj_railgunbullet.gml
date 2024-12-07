/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76BAAC8D
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 4E257821
	/// @DnDParent : 76BAAC8D
	/// @DnDArgument : "health" "-40"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-40);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28AF44B7
	/// @DnDParent : 76BAAC8D
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 5;
}