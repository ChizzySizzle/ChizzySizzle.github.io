/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15C62920
/// @DnDArgument : "var" "bulletSpeed"
bulletSpeed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1503389E
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "damage"
damage = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 467C7D9B
/// @DnDArgument : "var" "range"
range = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D1D2993
/// @DnDArgument : "expr" "obj_bigbullet_trail"
/// @DnDArgument : "var" "bulletTrail"
bulletTrail = obj_bigbullet_trail;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 195076A4
image_speed = 1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 3140117B
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3BCB9AD0
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 627F9B16
/// @DnDArgument : "speed" "bullet_speed"
speed = bullet_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A62B955
/// @DnDArgument : "var" "wildstry"
wildstry = 0;