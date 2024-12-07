/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 020F7D3A
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5D664623
	/// @DnDParent : 020F7D3A
	/// @DnDArgument : "obj" "obj_roverE"
	/// @DnDSaveInfo : "obj" "obj_roverE"
	var l5D664623_0 = false;
	l5D664623_0 = instance_exists(obj_roverE);
	if(l5D664623_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 111864F9
		/// @DnDParent : 5D664623
		/// @DnDArgument : "obj" "obj_minigun2E"
		/// @DnDSaveInfo : "obj" "obj_minigun2E"
		var l111864F9_0 = false;
		l111864F9_0 = instance_exists(obj_minigun2E);
		if(l111864F9_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45AF6FAB
			/// @DnDParent : 111864F9
			/// @DnDArgument : "expr" "-price"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "obj_upgradeData.bones"
			obj_upgradeData.bones += -price;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 39D3D446
			/// @DnDParent : 111864F9
			/// @DnDArgument : "objectid" "obj_vulcan"
			/// @DnDArgument : "layer" ""Turret_layer""
			/// @DnDSaveInfo : "objectid" "obj_vulcan"
			instance_create_layer(0, 0, "Turret_layer", obj_vulcan);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5F66693F
			/// @DnDApplyTo : {obj_minigun2}
			/// @DnDParent : 111864F9
			with(obj_minigun2) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 09AF8F39
			/// @DnDParent : 111864F9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_minigun3E"
			/// @DnDSaveInfo : "objectid" "obj_minigun3E"
			instance_create_layer(x + 0, y + 0, "Instances", obj_minigun3E);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 28A7F62B
			/// @DnDParent : 111864F9
			instance_destroy();
		}
	}
}