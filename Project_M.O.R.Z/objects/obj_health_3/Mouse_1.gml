/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16CE760C
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "30"
with(obj_player_parent) var l16CE760C_0 = bones >= 30;
if(l16CE760C_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 64F3C4F4
	/// @DnDComment : as long as speed 3$(13_10)exists, health 3$(13_10)is available
	/// @DnDParent : 16CE760C
	/// @DnDArgument : "obj" "obj_speed_3"
	/// @DnDSaveInfo : "obj" "obj_speed_3"
	var l64F3C4F4_0 = false;
	l64F3C4F4_0 = instance_exists(obj_speed_3);
	if(l64F3C4F4_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 3C4FD968
		/// @DnDParent : 64F3C4F4
		/// @DnDArgument : "obj" "obj_health_2"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_health_2"
		var l3C4FD968_0 = false;
		l3C4FD968_0 = instance_exists(obj_health_2);
		if(!l3C4FD968_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 353282B4
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 3C4FD968
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "3"
			with(obj_player_parent) var l353282B4_0 = cooldown <= 0;
			if(l353282B4_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7A9ECB0E
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 353282B4
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "cooldown"
				with(obj_player_parent) {
				cooldown = 3;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45C522E0
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 353282B4
				/// @DnDArgument : "expr" "30"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "addhp"
				with(obj_player_parent) {
				addhp += 30;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 527F2F25
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 353282B4
				/// @DnDArgument : "expr" "-30"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bones"
				with(obj_player_parent) {
				bones += -30;
				
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 01D597BB
				/// @DnDApplyTo : {obj_speed_3}
				/// @DnDParent : 353282B4
				/// @DnDArgument : "spriteind" "spr_speed"
				/// @DnDSaveInfo : "spriteind" "spr_speed"
				with(obj_speed_3) {
				sprite_index = spr_speed;
				image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 70EDF524
				/// @DnDComment : makes first tank gun $(13_10)upgrade available
				/// @DnDApplyTo : {obj_tank_1}
				/// @DnDParent : 353282B4
				/// @DnDArgument : "spriteind" "spr_button_tt2"
				/// @DnDSaveInfo : "spriteind" "spr_button_tt2"
				with(obj_tank_1) {
				sprite_index = spr_button_tt2;
				image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5E4DBD13
				/// @DnDParent : 353282B4
				instance_destroy();
			}
		}
	}
}