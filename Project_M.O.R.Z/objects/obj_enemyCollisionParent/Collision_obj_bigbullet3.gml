/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46125915
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(cooldown <= 20)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 560411C2
	/// @DnDParent : 46125915
	/// @DnDArgument : "health" "-17"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-17);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44C90F40
	/// @DnDParent : 46125915
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pierce"
	pierce += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B9111E5
	/// @DnDParent : 46125915
	/// @DnDArgument : "var" "pierce"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "3"
	if(pierce > 3)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 62D33489
		/// @DnDApplyTo : other
		/// @DnDParent : 2B9111E5
		with(other) instance_destroy();
	}
}