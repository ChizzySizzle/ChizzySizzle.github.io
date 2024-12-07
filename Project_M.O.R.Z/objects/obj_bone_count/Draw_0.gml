/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E983DD6
/// @DnDArgument : "expr" "room == Tech_Tree"
if(room == Tech_Tree)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 38693BC5
	/// @DnDParent : 3E983DD6
	/// @DnDArgument : "color" "$FF00CC17"
	draw_set_colour($FF00CC17 & $ffffff);
	var l38693BC5_0=($FF00CC17 >> 24);
	draw_set_alpha(l38693BC5_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 34A1CD71
	/// @DnDParent : 3E983DD6
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 08114C44
	/// @DnDApplyTo : {obj_upgradeData}
	/// @DnDParent : 3E983DD6
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""Bones: ""
	/// @DnDArgument : "text" "bones"
	with(obj_upgradeData) draw_text_transformed(40, 30, string("Bones: ") + string(bones), 2, 2, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 460E78CE
	/// @DnDParent : 3E983DD6
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "caption" ""For prices hit SPACE""
	draw_text(40, 70, string("For prices hit SPACE") + "");
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 728B1A63
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 17BEA0D4
	/// @DnDParent : 728B1A63
	/// @DnDArgument : "color" "$FF00CC17"
	draw_set_colour($FF00CC17 & $ffffff);
	var l17BEA0D4_0=($FF00CC17 >> 24);
	draw_set_alpha(l17BEA0D4_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 26664026
	/// @DnDParent : 728B1A63
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 25FBBF00
	/// @DnDApplyTo : {obj_upgradeData}
	/// @DnDParent : 728B1A63
	/// @DnDArgument : "x" "obj_player_parent.x - 126"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "obj_player_parent.y + 55"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Bones: ""
	/// @DnDArgument : "var" "bones"
	with(obj_upgradeData) draw_text(x + obj_player_parent.x - 126, y + obj_player_parent.y + 55, string("Bones: ") + string(bones));
}