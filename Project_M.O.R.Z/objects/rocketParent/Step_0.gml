/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7DC9C7B8
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2ECFB0CC
/// @DnDArgument : "obj" "obj_mouseCollider"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_mouseCollider"
var l2ECFB0CC_0 = false;
l2ECFB0CC_0 = instance_exists(obj_mouseCollider);
if(!l2ECFB0CC_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4465D2BB
	/// @DnDParent : 2ECFB0CC
	/// @DnDArgument : "objectid" "obj_mouseCollider"
	/// @DnDArgument : "layer" ""Enemy_Bullet""
	/// @DnDSaveInfo : "objectid" "obj_mouseCollider"
	instance_create_layer(0, 0, "Enemy_Bullet", obj_mouseCollider);
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1A3E1C94
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E58DBD7
/// @DnDArgument : "expr" "rocketAccelRate"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "rocketSpeed"
rocketSpeed += rocketAccelRate;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0E62BAC4
/// @DnDArgument : "speed" "rocketSpeed"
speed = rocketSpeed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 211DE480
/// @DnDArgument : "var" "rocketSpeed"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "detonate"
if(rocketSpeed >= detonate)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 219EEDE1
	/// @DnDParent : 211DE480
	instance_destroy();
}