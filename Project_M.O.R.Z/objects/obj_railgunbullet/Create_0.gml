/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6144CB13
/// @DnDArgument : "expr" "obj_railgunbullet_trail"
/// @DnDArgument : "var" "Trailtype"
Trailtype = obj_railgunbullet_trail;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0415C275
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "lifetime"
lifetime = 50;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C4C9C54
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "piercing"
piercing = 8;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1E3299D4
/// @DnDArgument : "speed" "32"
speed = 32;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 59F5B2A7
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 3A12CD9A
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 22EB0543
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;