/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 74DBEA33
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4F7B1428
	/// @DnDParent : 74DBEA33
	/// @DnDArgument : "obj" "obj_rocket1E"
	/// @DnDSaveInfo : "obj" "obj_rocket1E"
	var l4F7B1428_0 = false;
	l4F7B1428_0 = instance_exists(obj_rocket1E);
	if(l4F7B1428_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 21FE3D16
		/// @DnDParent : 4F7B1428
		/// @DnDArgument : "obj" "obj_tank2E"
		/// @DnDSaveInfo : "obj" "obj_tank2E"
		var l21FE3D16_0 = false;
		l21FE3D16_0 = instance_exists(obj_tank2E);
		if(l21FE3D16_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2722294F
			/// @DnDParent : 21FE3D16
			/// @DnDArgument : "expr" "-price"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "obj_upgradeData.bones"
			obj_upgradeData.bones += -price;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 00371DFA
			/// @DnDApplyTo : {obj_upgradeData}
			/// @DnDParent : 21FE3D16
			/// @DnDArgument : "expr" "40"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "healthUp"
			with(obj_upgradeData) {
			healthUp += 40;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19718A41
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 21FE3D16
			/// @DnDArgument : "expr" "40"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "healthUp"
			with(obj_player_parent) {
			healthUp += 40;
			
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 248EB2CE
			/// @DnDParent : 21FE3D16
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_body2E"
			/// @DnDSaveInfo : "objectid" "obj_body2E"
			instance_create_layer(x + 0, y + 0, "Instances", obj_body2E);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 31FA4D85
			/// @DnDApplyTo : {obj_tnkbody1}
			/// @DnDParent : 21FE3D16
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_tnkbody2"
			/// @DnDArgument : "layer" ""Body_layer""
			/// @DnDSaveInfo : "objectid" "obj_tnkbody2"
			with(obj_tnkbody1) {
				instance_create_layer(x + 0, y + 0, "Body_layer", obj_tnkbody2); 
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78FB88E7
			/// @DnDApplyTo : {obj_roverB}
			/// @DnDParent : 21FE3D16
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_roverE"
			/// @DnDSaveInfo : "objectid" "obj_roverE"
			with(obj_roverB) {
				instance_create_layer(x + 0, y + 0, "Instances", obj_roverE); 
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3CB17856
			/// @DnDApplyTo : {obj_roverB}
			/// @DnDParent : 21FE3D16
			with(obj_roverB) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 21A070C1
			/// @DnDApplyTo : {obj_tnkbody1}
			/// @DnDParent : 21FE3D16
			with(obj_tnkbody1) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1EEF6615
			/// @DnDParent : 21FE3D16
			instance_destroy();
		}
	}
}