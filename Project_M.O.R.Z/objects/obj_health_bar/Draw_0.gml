/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 6C714104
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "x1" "-27"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "52"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "27"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "45"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00FF00"
/// @DnDArgument : "maxcol" "$FF00FF00"
with(obj_player_parent) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -27, y + 52, x + 27, y + 45, __dnd_health, $FFFFFFFF, $FF00FF00 & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));
}