/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1A92C4B6
/// @DnDArgument : "expr" "obj_upgradeData.bones >= price"
if(obj_upgradeData.bones >= price)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 343E3C60
	/// @DnDParent : 1A92C4B6
	/// @DnDArgument : "obj" "obj_minigun1E"
	/// @DnDSaveInfo : "obj" "obj_minigun1E"
	var l343E3C60_0 = false;
	l343E3C60_0 = instance_exists(obj_minigun1E);
	if(l343E3C60_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 105C7659
		/// @DnDParent : 343E3C60
		/// @DnDArgument : "expr" "-price"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_upgradeData.bones"
		obj_upgradeData.bones += -price;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2D3268B5
		/// @DnDParent : 343E3C60
		/// @DnDArgument : "objectid" "obj_minigun2"
		/// @DnDArgument : "layer" ""Turret_layer""
		/// @DnDSaveInfo : "objectid" "obj_minigun2"
		instance_create_layer(0, 0, "Turret_layer", obj_minigun2);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4788130F
		/// @DnDApplyTo : {obj_minigun1}
		/// @DnDParent : 343E3C60
		with(obj_minigun1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4BE6348A
		/// @DnDParent : 343E3C60
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_minigun2E"
		/// @DnDSaveInfo : "objectid" "obj_minigun2E"
		instance_create_layer(x + 0, y + 0, "Instances", obj_minigun2E);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2A07A0F2
		/// @DnDParent : 343E3C60
		instance_destroy();
	}
}