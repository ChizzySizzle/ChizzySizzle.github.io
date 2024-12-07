/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5CB100F3
/// @DnDArgument : "obj" "BugBase"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "BugBase"
var l5CB100F3_0 = false;
l5CB100F3_0 = instance_exists(BugBase);
if(!l5CB100F3_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0BA641C5
	/// @DnDParent : 5CB100F3
	/// @DnDArgument : "obj" "SmallBug"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "SmallBug"
	var l0BA641C5_0 = false;
	l0BA641C5_0 = instance_exists(SmallBug);
	if(!l0BA641C5_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7BDD0CAC
		/// @DnDParent : 0BA641C5
		/// @DnDArgument : "obj" "BigBug"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "BigBug"
		var l7BDD0CAC_0 = false;
		l7BDD0CAC_0 = instance_exists(BigBug);
		if(!l7BDD0CAC_0)
		{
			/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 7C1BC854
			/// @DnDParent : 7BDD0CAC
			room_goto_next();
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 0E4AFE78
			/// @DnDParent : 7BDD0CAC
			/// @DnDArgument : "expr" "room == Room6"
			if(room == Room6)
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 2E65E8B9
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 0E4AFE78
				/// @DnDArgument : "x" "-100"
				/// @DnDArgument : "y" "-100"
				with(obj_player_parent) {
				x = -100;
				y = -100;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 70521144
			/// @DnDParent : 7BDD0CAC
			else
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 35D70403
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 70521144
				/// @DnDArgument : "x" "220"
				/// @DnDArgument : "y" "360"
				with(obj_player_parent) {
				x = 220;
				y = 360;
				}
			}
		}
	}
}