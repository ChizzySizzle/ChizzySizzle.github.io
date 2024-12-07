/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 393EFD89
/// @DnDArgument : "objectid" "obj_laserTimer"
/// @DnDArgument : "layer" ""Turret_layer""
/// @DnDSaveInfo : "objectid" "obj_laserTimer"
instance_create_layer(0, 0, "Turret_layer", obj_laserTimer);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0B657C2A
/// @DnDApplyTo : {obj_railgun}
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_laserFront"
/// @DnDArgument : "layer" ""Enemy_Bullet""
/// @DnDSaveInfo : "objectid" "obj_laserFront"
with(obj_railgun) {
	instance_create_layer(x + 0, y + 0, "Enemy_Bullet", obj_laserFront); 
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F2F4C48
/// @DnDApplyTo : {obj_railgun}
/// @DnDArgument : "expr" "1500"
/// @DnDArgument : "var" "laserCooldown"
with(obj_railgun) {
laserCooldown = 1500;

}

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 67B22AF8
/// @DnDApplyTo : {obj_railgun}
with(obj_railgun) image_speed = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 525F4E13
/// @DnDArgument : "soundid" "snd_secondarylaser"
/// @DnDSaveInfo : "soundid" "snd_secondarylaser"
audio_play_sound(snd_secondarylaser, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7CC89196
instance_destroy();