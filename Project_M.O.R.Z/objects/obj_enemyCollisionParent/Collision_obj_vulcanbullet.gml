/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22536032
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "30"
if(cooldown <= 30)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 1BE4C802
	/// @DnDParent : 22536032
	/// @DnDArgument : "health" "-5"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-5);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A4C5486
	/// @DnDParent : 22536032
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pierce"
	pierce += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AAB48E4
	/// @DnDParent : 22536032
	/// @DnDArgument : "var" "pierce"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "3"
	if(pierce > 3)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F741C4D
		/// @DnDApplyTo : other
		/// @DnDParent : 7AAB48E4
		with(other) instance_destroy();
	}
}