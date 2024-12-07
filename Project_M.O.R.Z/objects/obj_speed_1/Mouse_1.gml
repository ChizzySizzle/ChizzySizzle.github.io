/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35C80B54
/// @DnDApplyTo : {obj_player_parent}
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "10"
with(obj_player_parent) var l35C80B54_0 = bones >= 10;
if(l35C80B54_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68F70ADF
	/// @DnDComment : so the button is only pressed once$(13_10)cooldown variable on tank
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 35C80B54
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	with(obj_player_parent) var l68F70ADF_0 = cooldown <= 0;
	if(l68F70ADF_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37E08F83
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 68F70ADF
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "cooldown"
		with(obj_player_parent) {
		cooldown = 3;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5358F044
		/// @DnDComment : increases speed
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 68F70ADF
		/// @DnDArgument : "expr" "1.5"
		/// @DnDArgument : "var" "tankspeed"
		with(obj_player_parent) {
		tankspeed = 1.5;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DC21BD7
		/// @DnDApplyTo : {obj_player_parent}
		/// @DnDParent : 68F70ADF
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bones"
		with(obj_player_parent) {
		bones += -10;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 42884D24
		/// @DnDApplyTo : {obj_speed_3}
		/// @DnDParent : 68F70ADF
		/// @DnDArgument : "spriteind" "spr_speedb"
		/// @DnDSaveInfo : "spriteind" "spr_speedb"
		with(obj_speed_3) {
		sprite_index = spr_speedb;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4AB67823
		/// @DnDParent : 68F70ADF
		instance_destroy();
	}
}