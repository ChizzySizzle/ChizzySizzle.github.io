/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3DA15659
var l3DA15659_0;
l3DA15659_0 = keyboard_check(vk_space);
if (l3DA15659_0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 6E7BAA07
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0FA24245
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "color" "$FF00FF00"
	draw_set_colour($FF00FF00 & $ffffff);
	var l0FA24245_0=($FF00FF00 >> 24);
	draw_set_alpha(l0FA24245_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6C32BC0E
	/// @DnDApplyTo : {obj_body2B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_body2B) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1B15973E
	/// @DnDApplyTo : {obj_healthUpB}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_healthUpB) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1ACBA6D5
	/// @DnDApplyTo : {obj_minigun1B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_minigun1B) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0F46B37B
	/// @DnDApplyTo : {obj_minigun2B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_minigun2B) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 45A05B50
	/// @DnDApplyTo : {obj_minigun3B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-24"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_minigun3B) draw_text(x + 32, y + -24, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7173EA0C
	/// @DnDApplyTo : {obj_railgunB}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-24"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_railgunB) draw_text(x + 32, y + -24, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3F3E7483
	/// @DnDApplyTo : {obj_rocket1B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_rocket1B) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 023427C4
	/// @DnDApplyTo : {obj_rocket2B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_rocket2B) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0F0E1237
	/// @DnDApplyTo : {obj_rocket3B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-24"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_rocket3B) draw_text(x + 32, y + -24, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5E254CE0
	/// @DnDApplyTo : {obj_roverB}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_roverB) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 21C36011
	/// @DnDApplyTo : {obj_speedUpB}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_speedUpB) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1F00C53E
	/// @DnDApplyTo : {obj_tank2B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_tank2B) draw_text(x + 32, y + 64, string("price: ") + string(price));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2319E9D5
	/// @DnDApplyTo : {obj_tank3B}
	/// @DnDParent : 3DA15659
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""price: ""
	/// @DnDArgument : "var" "price"
	with(obj_tank3B) draw_text(x + 32, y + 64, string("price: ") + string(price));
}