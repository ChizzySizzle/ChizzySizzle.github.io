/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5C979EC2
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
x = obj_player_parent.x;
y = obj_player_parent.y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4DA7E6DA
/// @DnDArgument : "not" "1"
var l4DA7E6DA_0;
l4DA7E6DA_0 = mouse_check_button(mb_left);
if (!l4DA7E6DA_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E5D7442
	/// @DnDParent : 4DA7E6DA
	instance_destroy();
}