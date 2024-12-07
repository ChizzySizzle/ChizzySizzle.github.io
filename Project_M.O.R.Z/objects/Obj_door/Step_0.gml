/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 67366536
/// @DnDArgument : "obj" "obj_text"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_text"
var l67366536_0 = false;
l67366536_0 = instance_exists(obj_text);
if(!l67366536_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6AC92729
	/// @DnDParent : 67366536
	instance_destroy();
}