/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 364E8240
/// @DnDArgument : "color" "$FF00E5FF"
draw_set_colour($FF00E5FF & $ffffff);
var l364E8240_0=($FF00E5FF >> 24);
draw_set_alpha(l364E8240_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4B74A3FC
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6E7942CC
/// @DnDArgument : "obj" "obj_vulcan"
/// @DnDSaveInfo : "obj" "obj_vulcan"
var l6E7942CC_0 = false;
l6E7942CC_0 = instance_exists(obj_vulcan);
if(l6E7942CC_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 205B871C
	/// @DnDApplyTo : obj_vulcan
	/// @DnDParent : 6E7942CC
	/// @DnDArgument : "var" "EXcool"
	/// @DnDArgument : "op" "2"
	with(obj_vulcan) var l205B871C_0 = EXcool > 0;
	if(l205B871C_0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3FA81F7A
		/// @DnDApplyTo : {obj_vulcan}
		/// @DnDParent : 205B871C
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-65"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""EX - ""
		/// @DnDArgument : "var" "EXcool"
		with(obj_vulcan) draw_text(x + 0, y + -65, string("EX - ") + string(EXcool));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3164205B
	/// @DnDApplyTo : obj_vulcan
	/// @DnDParent : 6E7942CC
	/// @DnDArgument : "var" "EXcool"
	/// @DnDArgument : "op" "3"
	with(obj_vulcan) var l3164205B_0 = EXcool <= 0;
	if(l3164205B_0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0718A832
		/// @DnDApplyTo : {obj_vulcan}
		/// @DnDParent : 3164205B
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-65"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""Spray Ready! ""
		with(obj_vulcan) draw_text(x + 0, y + -65, string("Spray Ready! ") + "");
	}
}