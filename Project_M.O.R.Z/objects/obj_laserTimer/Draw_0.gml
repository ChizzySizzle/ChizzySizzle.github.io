/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5B6CFEAF
/// @DnDArgument : "color" "$FFFFFF00"
draw_set_colour($FFFFFF00 & $ffffff);
var l5B6CFEAF_0=($FFFFFF00 >> 24);
draw_set_alpha(l5B6CFEAF_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1DD43E88
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-65"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""EX :""
/// @DnDArgument : "var" "obj_railgun.laserCooldown"
with(obj_player_parent) draw_text(x + 0, y + -65, string("EX :") + string(obj_railgun.laserCooldown));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3308C12A
/// @DnDApplyTo : {obj_railgun}
/// @DnDArgument : "var" "laserCooldown"
/// @DnDArgument : "op" "3"
with(obj_railgun) var l3308C12A_0 = laserCooldown <= 0;
if(l3308C12A_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 743B8839
	/// @DnDParent : 3308C12A
	instance_destroy();
}