/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C0C2255
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "20"
with(obj_player_parent) var l1C0C2255_0 = bones >= 20;
if(l1C0C2255_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 3FE04EAC
	/// @DnDComment : if health 3 was not used,$(13_10)speed 3 can be used
	/// @DnDParent : 1C0C2255
	/// @DnDArgument : "obj" "obj_health_3"
	/// @DnDSaveInfo : "obj" "obj_health_3"
	var l3FE04EAC_0 = false;
	l3FE04EAC_0 = instance_exists(obj_health_3);
	if(l3FE04EAC_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 616FC913
		/// @DnDComment : if speed 2 was used$(13_10)speed 3 can be used
		/// @DnDParent : 3FE04EAC
		/// @DnDArgument : "obj" "obj_speed_1"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_speed_1"
		var l616FC913_0 = false;
		l616FC913_0 = instance_exists(obj_speed_1);
		if(!l616FC913_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B930C08
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 616FC913
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "3"
			with(obj_player_parent) var l2B930C08_0 = cooldown <= 0;
			if(l2B930C08_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 51D7D644
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 2B930C08
				/// @DnDArgument : "expr" "-20"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bones"
				with(obj_player_parent) {
				bones += -20;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 18BA57ED
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 2B930C08
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "cooldown"
				with(obj_player_parent) {
				cooldown = 3;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 506368C9
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 2B930C08
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "tankspeed"
				with(obj_player_parent) {
				tankspeed = 3;
				
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 7E3DFA79
				/// @DnDComment : greys out health 3,$(13_10)makes it unavailable
				/// @DnDApplyTo : {obj_health_3}
				/// @DnDParent : 2B930C08
				/// @DnDArgument : "spriteind" "spr_health"
				/// @DnDSaveInfo : "spriteind" "spr_health"
				with(obj_health_3) {
				sprite_index = spr_health;
				image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 4FD3D12E
				/// @DnDApplyTo : {obj_rover_1}
				/// @DnDParent : 2B930C08
				/// @DnDArgument : "spriteind" "spr_button_mt1b"
				/// @DnDSaveInfo : "spriteind" "spr_button_mt1b"
				with(obj_rover_1) {
				sprite_index = spr_button_mt1b;
				image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 646A3576
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 2B930C08
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_rvrbody1"
				/// @DnDArgument : "layer" ""Tank_Body""
				/// @DnDSaveInfo : "objectid" "obj_rvrbody1"
				with(obj_player_parent) {
					instance_create_layer(x + 0, y + 0, "Tank_Body", obj_rvrbody1); 
				}
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3A146E91
				/// @DnDApplyTo : {obj_tnkbody1}
				/// @DnDParent : 2B930C08
				with(obj_tnkbody1) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 44ABDBDC
				/// @DnDParent : 2B930C08
				instance_destroy();
			}
		}
	}
}