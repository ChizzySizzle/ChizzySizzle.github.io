/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 6DF9ECD3
/// @DnDArgument : "soundid" "snd_Fighting_Loop"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "snd_Fighting_Loop"
var l6DF9ECD3_0 = snd_Fighting_Loop;
if (!audio_is_playing(l6DF9ECD3_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 119C255F
	/// @DnDParent : 6DF9ECD3
	/// @DnDArgument : "soundid" "snd_Fighting_Loop"
	/// @DnDSaveInfo : "soundid" "snd_Fighting_Loop"
	audio_play_sound(snd_Fighting_Loop, 0, 0, 1.0, undefined, 1.0);
}