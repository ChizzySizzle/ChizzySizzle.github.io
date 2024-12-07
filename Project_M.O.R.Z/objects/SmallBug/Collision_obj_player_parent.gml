/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7D941954
/// @DnDArgument : "obj" "obj_tnkbody2"
/// @DnDSaveInfo : "obj" "obj_tnkbody2"
var l7D941954_0 = false;
l7D941954_0 = instance_exists(obj_tnkbody2);
if(l7D941954_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 175E345B
	/// @DnDParent : 7D941954
	/// @DnDArgument : "health" "-.8"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-.8);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1040550B
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 31A11119
	/// @DnDParent : 1040550B
	/// @DnDArgument : "health" "-0.3"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-0.3);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4005B034
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "expr" "current_speed * .825"
/// @DnDArgument : "var" "current_speed"
with(obj_player_parent) {
current_speed = current_speed * .825;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D5271E9
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B06848B
	/// @DnDParent : 1D5271E9
	/// @DnDArgument : "expr" "attack"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player_parent.hp"
	obj_player_parent.hp += attack;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F7CEE2F
	/// @DnDParent : 1D5271E9
	/// @DnDArgument : "expr" "25"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 25;
}