/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 779597CD
/// @DnDArgument : "expr" "obj_bigbullet_trail2"
/// @DnDArgument : "var" "Trailtype"
Trailtype = obj_bigbullet_trail2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53009078
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "lifetime"
lifetime = 50;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1A4A19F0
/// @DnDArgument : "speed" "13"
speed = 13;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 765B04A9
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 562ECF96
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3A20AF43
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;