/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70129395
/// @DnDArgument : "expr" "obj_bigbullet_trail3"
/// @DnDArgument : "var" "Trailtype"
Trailtype = obj_bigbullet_trail3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D05960E
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "lifetime"
lifetime = 50;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0996C405
/// @DnDArgument : "speed" "16"
speed = 16;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 4368460C
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 71429310
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 34DF8DE8
/// @DnDArgument : "angle" "direction - 90"
image_angle = direction - 90;