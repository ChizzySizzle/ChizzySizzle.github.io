/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5D0F4359
/// @DnDArgument : "expr" "room != Tech_Tree"
if(room != Tech_Tree)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 180A009A
	/// @DnDParent : 5D0F4359
	/// @DnDArgument : "room" "Tech_Tree"
	/// @DnDSaveInfo : "room" "Tech_Tree"
	room_goto(Tech_Tree);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 011FC12A
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 5D0F4359
	/// @DnDArgument : "x" "640"
	/// @DnDArgument : "y" "136"
	with(obj_player_parent) {
	x = 640;
	y = 136;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63BC79BF
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 5D0F4359
	/// @DnDArgument : "expr" "90"
	/// @DnDArgument : "var" "dirvar"
	with(obj_player_parent) {
	dirvar = 90;
	
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 57E26698
/// @DnDArgument : "expr" "room == Tech_Tree"
if(room == Tech_Tree)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2678A9EC
	/// @DnDApplyTo : {obj_LastRoom}
	/// @DnDParent : 57E26698
	/// @DnDArgument : "room" "Last_Room"
	with(obj_LastRoom) room_goto(Last_Room);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 479D22C9
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 57E26698
	/// @DnDArgument : "x" "96"
	/// @DnDArgument : "y" "240"
	with(obj_player_parent) {
	x = 96;
	y = 240;
	}
}