/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B1F3780
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "30"
if(cooldown <= 30)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 241FA4C2
	/// @DnDParent : 4B1F3780
	/// @DnDArgument : "health" "-2"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-2);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F1667A9
	/// @DnDParent : 4B1F3780
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pierce"
	pierce += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A6689F5
	/// @DnDParent : 4B1F3780
	/// @DnDArgument : "var" "pierce"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "2"
	if(pierce > 2)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 268DC903
		/// @DnDApplyTo : other
		/// @DnDParent : 4A6689F5
		with(other) instance_destroy();
	}
}