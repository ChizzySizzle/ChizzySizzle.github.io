/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A1EAD14
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BED9623
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "fireRate"
fireRate = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 74C12718
/// @DnDArgument : "expr" "obj_minibullet2"
/// @DnDArgument : "var" "current_bullet"
current_bullet = obj_minibullet2;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6F30A6FF
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 218BEC30
/// @DnDArgument : "objectid" "obj_turretTarget"
/// @DnDArgument : "layer" ""Turret_layer""
/// @DnDSaveInfo : "objectid" "obj_turretTarget"
instance_create_layer(0, 0, "Turret_layer", obj_turretTarget);