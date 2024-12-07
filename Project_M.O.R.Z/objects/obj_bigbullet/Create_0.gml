/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16992ED6
/// @DnDArgument : "expr" "obj_bigbullet_trail"
/// @DnDArgument : "var" "Trailtype"
Trailtype = obj_bigbullet_trail;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 658AE8EA
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "lifetime"
lifetime = 50;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5A3CC3CB
/// @DnDArgument : "speed" "10"
speed = 10;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 641353AB
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 63147549
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 724C5329
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;