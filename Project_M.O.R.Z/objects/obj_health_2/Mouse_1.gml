/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58608D90
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "20"
with(obj_player_parent) var l58608D90_0 = bones >= 20;
if(l58608D90_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 76514437
	/// @DnDParent : 58608D90
	/// @DnDArgument : "obj" "obj_health_1"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_health_1"
	var l76514437_0 = false;
	l76514437_0 = instance_exists(obj_health_1);
	if(!l76514437_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D5E85EC
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 76514437
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		with(obj_player_parent) var l3D5E85EC_0 = cooldown <= 0;
		if(l3D5E85EC_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FD214D0
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 3D5E85EC
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "cooldown"
			with(obj_player_parent) {
			cooldown = 3;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 482D34CE
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 3D5E85EC
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "addhp"
			with(obj_player_parent) {
			addhp += 20;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 150D3AA6
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 3D5E85EC
			/// @DnDArgument : "expr" "-20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bones"
			with(obj_player_parent) {
			bones += -20;
			
			}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 63370186
			/// @DnDComment : if speed 3 exists,$(13_10)health 3 is available
			/// @DnDParent : 3D5E85EC
			/// @DnDArgument : "obj" "obj_speed_3"
			/// @DnDSaveInfo : "obj" "obj_speed_3"
			var l63370186_0 = false;
			l63370186_0 = instance_exists(obj_speed_3);
			if(l63370186_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 1CBB9AE5
				/// @DnDComment : make next button available
				/// @DnDApplyTo : {obj_health_3}
				/// @DnDParent : 63370186
				/// @DnDArgument : "spriteind" "spr_healthb"
				/// @DnDSaveInfo : "spriteind" "spr_healthb"
				with(obj_health_3) {
				sprite_index = spr_healthb;
				image_index = 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4CF47C8F
			/// @DnDParent : 3D5E85EC
			instance_destroy();
		}
	}
}