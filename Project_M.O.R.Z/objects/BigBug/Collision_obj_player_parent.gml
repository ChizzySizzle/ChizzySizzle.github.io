/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3C4382DC
/// @DnDArgument : "obj" "obj_tnkbody2"
/// @DnDSaveInfo : "obj" "obj_tnkbody2"
var l3C4382DC_0 = false;
l3C4382DC_0 = instance_exists(obj_tnkbody2);
if(l3C4382DC_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 6FDBAC83
	/// @DnDParent : 3C4382DC
	/// @DnDArgument : "health" "-.6"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-.6);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 49DD857D
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 20F8B56F
	/// @DnDParent : 49DD857D
	/// @DnDArgument : "health" "-.2"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-.2);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 482B6226
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "expr" "current_speed * .675"
/// @DnDArgument : "var" "current_speed"
with(obj_player_parent) {
current_speed = current_speed * .675;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65AA3EBB
variable = 0;

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