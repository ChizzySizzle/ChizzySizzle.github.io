/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D411326
/// @DnDArgument : "expr" "obj_lgRocket"
/// @DnDArgument : "var" "current_bullet"
current_bullet = obj_lgRocket;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DAA8966
/// @DnDArgument : "var" "rktNum"
rktNum = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6668BD7A
/// @DnDArgument : "objectid" "obj_turretTarget"
/// @DnDArgument : "layer" ""Turret_layer""
/// @DnDSaveInfo : "objectid" "obj_turretTarget"
instance_create_layer(0, 0, "Turret_layer", obj_turretTarget);