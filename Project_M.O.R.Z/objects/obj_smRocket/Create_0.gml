/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17B9A4AE
/// @DnDArgument : "expr" "obj_smRocketExplode"
/// @DnDArgument : "var" "setExplode"
setExplode = obj_smRocketExplode;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E00995D
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "rocketSpeed"
rocketSpeed = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BB9CBDB
/// @DnDArgument : "expr" ".2"
/// @DnDArgument : "var" "rocketAccelRate"
rocketAccelRate = .2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2773D85B
/// @DnDArgument : "expr" "18"
/// @DnDArgument : "var" "detonate"
detonate = 18;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 4E612764
image_speed = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2F139E7F
/// @DnDArgument : "soundid" "snd_smallRocketFire"
/// @DnDSaveInfo : "soundid" "snd_smallRocketFire"
audio_play_sound(snd_smallRocketFire, 0, 0, 1.0, undefined, 1.0);