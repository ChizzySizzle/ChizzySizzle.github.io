/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D78BCA2
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "30"
with(obj_player_parent) var l6D78BCA2_0 = bones >= 30;
if(l6D78BCA2_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 72E41DB2
	/// @DnDComment : if speed #3 does not exist,$(13_10)this button is clickable
	/// @DnDParent : 6D78BCA2
	/// @DnDArgument : "obj" "obj_speed_3"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_speed_3"
	var l72E41DB2_0 = false;
	l72E41DB2_0 = instance_exists(obj_speed_3);
	if(!l72E41DB2_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 546E6D75
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 72E41DB2
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		with(obj_player_parent) var l546E6D75_0 = cooldown <= 0;
		if(l546E6D75_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0DBB8535
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 546E6D75
			/// @DnDArgument : "expr" "-30"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bones"
			with(obj_player_parent) {
			bones += -30;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 29E1B915
			/// @DnDApplyTo : {obj_player_parent}
			/// @DnDParent : 546E6D75
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "cooldown"
			with(obj_player_parent) {
			cooldown = 3;
			
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 20B0E2FA
			/// @DnDComment : makes next upgrade$(13_10)available
			/// @DnDApplyTo : {obj_rover_2}
			/// @DnDParent : 546E6D75
			/// @DnDArgument : "spriteind" "spr_button_mt2b"
			/// @DnDSaveInfo : "spriteind" "spr_button_mt2b"
			with(obj_rover_2) {
			sprite_index = spr_button_mt2b;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 60126CEB
			/// @DnDParent : 546E6D75
			/// @DnDArgument : "objectid" "obj_minigun1"
			/// @DnDArgument : "layer" ""Tank_Turrets""
			/// @DnDSaveInfo : "objectid" "obj_minigun1"
			instance_create_layer(0, 0, "Tank_Turrets", obj_minigun1);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 07E85D7D
			/// @DnDApplyTo : {obj_turret1}
			/// @DnDParent : 546E6D75
			with(obj_turret1) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1F427C22
			/// @DnDParent : 546E6D75
			instance_destroy();
		}
	}
}