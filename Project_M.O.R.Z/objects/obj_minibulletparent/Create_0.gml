/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22EBEA35
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "lifetime"
lifetime = 60;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 787845A0
/// @DnDArgument : "speed" "12"
speed = 12;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 635F75C0
image_speed = 1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 6DDA3C4D
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27F4C6F1
/// @DnDArgument : "expr" "direction + random_range(-3,3)"
/// @DnDArgument : "var" "direction"
direction = direction + random_range(-3,3);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1F87B19D
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;