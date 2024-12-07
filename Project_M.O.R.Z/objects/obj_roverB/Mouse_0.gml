/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0A9333B5
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7CA23DF9
	/// @DnDParent : 0A9333B5
	/// @DnDArgument : "obj" "obj_rocket1E"
	/// @DnDSaveInfo : "obj" "obj_rocket1E"
	var l7CA23DF9_0 = false;
	l7CA23DF9_0 = instance_exists(obj_rocket1E);
	if(l7CA23DF9_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3DD2ECA9
		/// @DnDParent : 7CA23DF9
		/// @DnDArgument : "obj" "obj_minigun1E"
		/// @DnDSaveInfo : "obj" "obj_minigun1E"
		var l3DD2ECA9_0 = false;
		l3DD2ECA9_0 = instance_exists(obj_minigun1E);
		if(l3DD2ECA9_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2ECF8DF1
			/// @DnDParent : 3DD2ECA9
			/// @DnDArgument : "expr" "-price"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "obj_upgradeData.bones"
			obj_upgradeData.bones += -price;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 232E3AC6
			/// @DnDApplyTo : {obj_upgradeData}
			/// @DnDParent : 3DD2ECA9
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "speedUp"
			with(obj_upgradeData) {
			speedUp += 2;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40916764
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 3DD2ECA9
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "speedUp"
			with(obj_player_parent) {
			speedUp += 2;
			
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3F539F91
			/// @DnDParent : 3DD2ECA9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_roverE"
			/// @DnDSaveInfo : "objectid" "obj_roverE"
			instance_create_layer(x + 0, y + 0, "Instances", obj_roverE);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2EE6CD83
			/// @DnDApplyTo : {obj_tnkbody1}
			/// @DnDParent : 3DD2ECA9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_rvrbody1"
			/// @DnDArgument : "layer" ""Body_layer""
			/// @DnDSaveInfo : "objectid" "obj_rvrbody1"
			with(obj_tnkbody1) {
				instance_create_layer(x + 0, y + 0, "Body_layer", obj_rvrbody1); 
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0BA6342A
			/// @DnDApplyTo : {obj_body2B}
			/// @DnDParent : 3DD2ECA9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_body2E"
			/// @DnDSaveInfo : "objectid" "obj_body2E"
			with(obj_body2B) {
				instance_create_layer(x + 0, y + 0, "Instances", obj_body2E); 
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6D1ED453
			/// @DnDApplyTo : {obj_body2B}
			/// @DnDParent : 3DD2ECA9
			with(obj_body2B) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 77FDBF11
			/// @DnDApplyTo : {obj_tnkbody1}
			/// @DnDParent : 3DD2ECA9
			with(obj_tnkbody1) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3E156236
			/// @DnDParent : 3DD2ECA9
			instance_destroy();
		}
	}
}