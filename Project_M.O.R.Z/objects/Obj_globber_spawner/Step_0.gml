/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 448DED7A
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "spawncool"
spawncool += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 184005F1
/// @DnDArgument : "var" "spawncool"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "spawn_rate"
if(spawncool > spawn_rate)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 440C12CD
	/// @DnDParent : 184005F1
	/// @DnDArgument : "xpos" "random_range(100,2550)"
	/// @DnDArgument : "ypos" "random_range(100,1450)"
	/// @DnDArgument : "objectid" "obj_enemy_globber"
	/// @DnDArgument : "layer" ""Enemy_Bullet""
	/// @DnDSaveInfo : "objectid" "obj_enemy_globber"
	instance_create_layer(random_range(100,2550), random_range(100,1450), "Enemy_Bullet", obj_enemy_globber);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B08D2BE
	/// @DnDParent : 184005F1
	/// @DnDArgument : "var" "spawncool"
	spawncool = 0;
}