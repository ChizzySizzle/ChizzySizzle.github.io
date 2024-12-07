/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75279DC9
/// @DnDArgument : "var" "hpcool"
hpcool = 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 18501165
/// @DnDArgument : "x" "obj_player_parent.x"
/// @DnDArgument : "y" "obj_player_parent.y"
direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5F29396F
/// @DnDArgument : "angle" "direction -90"
image_angle = direction -90;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A6572DE
/// @DnDArgument : "var" "wildstry"
wildstry = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 673AD737
/// @DnDArgument : "expr" "room == Room4"
if(room == Room4)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3854FD37
	/// @DnDParent : 673AD737
	/// @DnDArgument : "speed" "6"
	speed = 6;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 337484E4
/// @DnDArgument : "expr" "room == Room5"
if(room == Room5)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 33EBC59B
	/// @DnDParent : 337484E4
	/// @DnDArgument : "speed" "7.5"
	speed = 7.5;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5E66B29E
/// @DnDArgument : "expr" "room == Room6"
if(room == Room6)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 62568523
	/// @DnDParent : 5E66B29E
	/// @DnDArgument : "speed" "9"
	speed = 9;
}