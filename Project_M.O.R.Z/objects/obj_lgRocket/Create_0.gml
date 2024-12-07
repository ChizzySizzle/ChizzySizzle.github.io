/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 258800F1
/// @DnDArgument : "expr" "obj_lgRocketExplode"
/// @DnDArgument : "var" "setExplode"
setExplode = obj_lgRocketExplode;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 07712D0C
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "rocketSpeed"
rocketSpeed = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69230765
/// @DnDArgument : "expr" ".15"
/// @DnDArgument : "var" "rocketAccelRate"
rocketAccelRate = .15;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6835EE5E
/// @DnDArgument : "expr" "22"
/// @DnDArgument : "var" "detonate"
detonate = 22;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 1D06279A
image_speed = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1E50DD1A
/// @DnDArgument : "soundid" "snd_largeRocketFire"
/// @DnDSaveInfo : "soundid" "snd_largeRocketFire"
audio_play_sound(snd_largeRocketFire, 0, 0, 1.0, undefined, 1.0);