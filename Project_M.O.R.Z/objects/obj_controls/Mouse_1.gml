/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1F84F0C4
/// @DnDArgument : "obj" "obj_controls_text"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_controls_text"
var l1F84F0C4_0 = false;
l1F84F0C4_0 = instance_exists(obj_controls_text);
if(!l1F84F0C4_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5FB49E41
	/// @DnDParent : 1F84F0C4
	/// @DnDArgument : "xpos" "90"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "10"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_controls_text"
	/// @DnDArgument : "layer" ""controlinfo""
	/// @DnDSaveInfo : "objectid" "obj_controls_text"
	instance_create_layer(x + 90, y + 10, "controlinfo", obj_controls_text);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3DC67FA9
	/// @DnDParent : 1F84F0C4
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_controlsbg"
	/// @DnDArgument : "layer" ""controlinfo""
	/// @DnDSaveInfo : "objectid" "obj_controlsbg"
	instance_create_layer(x + 0, y + 0, "controlinfo", obj_controlsbg);
}