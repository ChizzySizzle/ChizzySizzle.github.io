/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52AB2DB8
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 4833EAC9
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0888DE58
/// @DnDArgument : "angle" "direction -90"
image_angle = direction -90;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 270A33E1
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "7"
if(image_index == 7)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3868789D
	/// @DnDParent : 270A33E1
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_globber_bullet"
	/// @DnDArgument : "layer" ""Enemy_Bullet""
	/// @DnDSaveInfo : "objectid" "obj_globber_bullet"
	instance_create_layer(x + 0, y + 0, "Enemy_Bullet", obj_globber_bullet);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3177EEC3
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "9"
if(image_index > 9)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B0D9FAE
	/// @DnDParent : 3177EEC3
	/// @DnDArgument : "spriteind" "spr_enemy_globber"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_globber"
	sprite_index = spr_enemy_globber;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D4D5219
	/// @DnDParent : 3177EEC3
	/// @DnDArgument : "var" "cooldown"
	cooldown = 0;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 116A5BDE
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D72A3FB
	/// @DnDParent : 116A5BDE
	instance_destroy();
}