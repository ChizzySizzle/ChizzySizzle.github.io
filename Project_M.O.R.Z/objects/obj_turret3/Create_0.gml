/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E48EADD
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 09393E0F
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "fireRate"
fireRate = 60;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 083A6B6E
/// @DnDArgument : "expr" "obj_bigbullet3"
/// @DnDArgument : "var" "current_bullet"
current_bullet = obj_bigbullet3;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 704A0333
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D8162A1
/// @DnDArgument : "objectid" "obj_turretTarget"
/// @DnDArgument : "layer" ""Turret_layer""
/// @DnDSaveInfo : "objectid" "obj_turretTarget"
instance_create_layer(0, 0, "Turret_layer", obj_turretTarget);