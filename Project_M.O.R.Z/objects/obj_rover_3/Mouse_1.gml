/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3195DEDA
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50"
with(obj_player_parent) var l3195DEDA_0 = bones >= 50;
if(l3195DEDA_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 56DC6D61
	/// @DnDComment : if button previous does not exist,$(13_10)continue
	/// @DnDParent : 3195DEDA
	/// @DnDArgument : "obj" "obj_rover_2"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_rover_2"
	var l56DC6D61_0 = false;
	l56DC6D61_0 = instance_exists(obj_rover_2);
	if(!l56DC6D61_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 029798DA
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 56DC6D61
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		with(obj_player_parent) var l029798DA_0 = cooldown <= 0;
		if(l029798DA_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CECAF31
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 029798DA
			/// @DnDArgument : "expr" "-50"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bones"
			with(obj_player_parent) {
			bones += -50;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DA8A00F
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 029798DA
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "cooldown"
			with(obj_player_parent) {
			cooldown = 3;
			
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 179FBC2A
			/// @DnDComment : vulcan $(13_10)does not$(13_10)exist $(13_10)yet
			/// @DnDParent : 029798DA
			/// @DnDArgument : "objectid" "obj_vulcan"
			/// @DnDArgument : "layer" ""Tank_Turrets""
			/// @DnDSaveInfo : "objectid" "obj_vulcan"
			instance_create_layer(0, 0, "Tank_Turrets", obj_vulcan);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0E37D108
			/// @DnDApplyTo : {obj_minigun2}
			/// @DnDParent : 029798DA
			with(obj_minigun2) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5B6A520B
			/// @DnDParent : 029798DA
			instance_destroy();
		}
	}
}