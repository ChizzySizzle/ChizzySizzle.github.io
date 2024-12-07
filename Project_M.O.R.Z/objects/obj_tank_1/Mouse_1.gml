/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CC99244
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "40"
with(obj_player_parent) var l1CC99244_0 = bones >= 40;
if(l1CC99244_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4CD01DEC
	/// @DnDComment : as long as$(13_10)speed 3 was not $(13_10)used, make this$(13_10)available
	/// @DnDParent : 1CC99244
	/// @DnDArgument : "obj" "obj_speed_3"
	/// @DnDSaveInfo : "obj" "obj_speed_3"
	var l4CD01DEC_0 = false;
	l4CD01DEC_0 = instance_exists(obj_speed_3);
	if(l4CD01DEC_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 67875E65
		/// @DnDParent : 4CD01DEC
		/// @DnDArgument : "obj" "obj_health_3"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_health_3"
		var l67875E65_0 = false;
		l67875E65_0 = instance_exists(obj_health_3);
		if(!l67875E65_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38DB5994
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 67875E65
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "3"
			with(obj_player_parent) var l38DB5994_0 = cooldown <= 0;
			if(l38DB5994_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3B83FA72
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 38DB5994
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "cooldown"
				with(obj_player_parent) {
				cooldown = 3;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3C066B87
				/// @DnDApplyTo : {obj_player_parent}
				/// @DnDParent : 38DB5994
				/// @DnDArgument : "expr" "-40"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bones"
				with(obj_player_parent) {
				bones += -40;
				
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 1CC5B840
				/// @DnDApplyTo : {obj_tank_2}
				/// @DnDParent : 38DB5994
				/// @DnDArgument : "spriteind" "spr_button_tt3b"
				/// @DnDSaveInfo : "spriteind" "spr_button_tt3b"
				with(obj_tank_2) {
				sprite_index = spr_button_tt3b;
				image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3A26905D
				/// @DnDParent : 38DB5994
				/// @DnDArgument : "objectid" "obj_turret2"
				/// @DnDArgument : "layer" ""Tank_Turrets""
				/// @DnDSaveInfo : "objectid" "obj_turret2"
				instance_create_layer(0, 0, "Tank_Turrets", obj_turret2);
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 50C8FC50
				/// @DnDApplyTo : {obj_turret1}
				/// @DnDParent : 38DB5994
				with(obj_turret1) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 735BD744
				/// @DnDParent : 38DB5994
				instance_destroy();
			}
		}
	}
}