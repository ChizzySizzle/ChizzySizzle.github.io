/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E05BD6A
/// @DnDArgument : "var" "spawncool"
spawncool = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 75C81722
/// @DnDArgument : "expr" "room = Room4"
if(room = Room4)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 178B9ADC
	/// @DnDParent : 75C81722
	/// @DnDArgument : "expr" "600"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 600;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 780CD4A0
/// @DnDArgument : "expr" "room = Room5"
if(room = Room5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 604A488A
	/// @DnDParent : 780CD4A0
	/// @DnDArgument : "expr" "500"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 500;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4E69129C
/// @DnDArgument : "expr" "room = Room6"
if(room = Room6)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 059C393F
	/// @DnDParent : 4E69129C
	/// @DnDArgument : "expr" "400"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 400;
}