/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2BAC6F7A
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
x = mouse_x;
y = mouse_y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 1D0E19D6
/// @DnDArgument : "not" "1"
var l1D0E19D6_0;
l1D0E19D6_0 = mouse_check_button(mb_left);
if (!l1D0E19D6_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B1758FC
	/// @DnDParent : 1D0E19D6
	instance_destroy();
}