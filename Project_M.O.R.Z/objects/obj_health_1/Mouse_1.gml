/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 025B46B6
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "10"
with(obj_player_parent) var l025B46B6_0 = bones >= 10;
if(l025B46B6_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B9D4828
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 025B46B6
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	with(obj_player_parent) var l1B9D4828_0 = cooldown <= 0;
	if(l1B9D4828_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72810938
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 1B9D4828
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "addhp"
		with(obj_player_parent) {
		addhp += 20;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 58A76C53
		/// @DnDComment : makes next upgrade$(13_10)available$(13_10)
		/// @DnDApplyTo : {obj_health_2}
		/// @DnDParent : 1B9D4828
		/// @DnDArgument : "spriteind" "spr_healthb"
		/// @DnDSaveInfo : "spriteind" "spr_healthb"
		with(obj_health_2) {
		sprite_index = spr_healthb;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0698D27D
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 1B9D4828
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "cooldown"
		with(obj_player_parent) {
		cooldown = 3;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03595F3A
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 1B9D4828
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bones"
		with(obj_player_parent) {
		bones += -10;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2A38184A
		/// @DnDParent : 1B9D4828
		instance_destroy();
	}
}