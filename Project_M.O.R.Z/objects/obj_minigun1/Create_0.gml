/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BEC4DF2
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24C9B0A6
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "fireRate"
fireRate = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F915E8B
/// @DnDArgument : "expr" "obj_minibullet"
/// @DnDArgument : "var" "current_bullet"
current_bullet = obj_minibullet;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 78270767
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1EF5C09F
/// @DnDArgument : "objectid" "obj_turretTarget"
/// @DnDArgument : "layer" ""Turret_layer""
/// @DnDSaveInfo : "objectid" "obj_turretTarget"
instance_create_layer(0, 0, "Turret_layer", obj_turretTarget);