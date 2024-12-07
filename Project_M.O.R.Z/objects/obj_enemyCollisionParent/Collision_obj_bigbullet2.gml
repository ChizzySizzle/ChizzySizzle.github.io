/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64FEB2FC
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "25"
if(cooldown <= 25)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 11102CE1
	/// @DnDParent : 64FEB2FC
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38D56303
	/// @DnDParent : 64FEB2FC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pierce"
	pierce += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B52CA8A
	/// @DnDParent : 64FEB2FC
	/// @DnDArgument : "var" "pierce"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "2"
	if(pierce > 2)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0196B8B5
		/// @DnDApplyTo : other
		/// @DnDParent : 1B52CA8A
		with(other) instance_destroy();
	}
}