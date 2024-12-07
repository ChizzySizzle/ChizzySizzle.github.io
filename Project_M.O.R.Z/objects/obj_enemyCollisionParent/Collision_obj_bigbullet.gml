/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39A94A12
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "30"
if(cooldown <= 30)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 552963B0
	/// @DnDParent : 39A94A12
	/// @DnDArgument : "health" "-6"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-6);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 573AA4D4
	/// @DnDParent : 39A94A12
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pierce"
	pierce += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34FAA1CB
	/// @DnDParent : 39A94A12
	/// @DnDArgument : "var" "pierce"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1"
	if(pierce > 1)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 56D1B715
		/// @DnDApplyTo : other
		/// @DnDParent : 34FAA1CB
		with(other) instance_destroy();
	}
}