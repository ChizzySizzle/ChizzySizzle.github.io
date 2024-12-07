/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0E1ABB48
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4549C616
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "fireRate"
fireRate = 50;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B410307
/// @DnDArgument : "expr" "obj_bigbullet"
/// @DnDArgument : "var" "current_bullet"
current_bullet = obj_bigbullet;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 1E2DE931
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5B37BDE6
/// @DnDArgument : "objectid" "obj_turretTarget"
/// @DnDArgument : "layer" ""Turret_layer""
/// @DnDSaveInfo : "objectid" "obj_turretTarget"
instance_create_layer(0, 0, "Turret_layer", obj_turretTarget);