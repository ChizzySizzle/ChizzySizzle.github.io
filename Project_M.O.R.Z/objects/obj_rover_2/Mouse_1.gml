/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 212C1EC4
/// @DnDApplyTo : obj_player_parent
/// @DnDArgument : "var" "bones"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "40"
with(obj_player_parent) var l212C1EC4_0 = bones >= 40;
if(l212C1EC4_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 56DC6D61
	/// @DnDComment : if button previous does not exist,$(13_10)continue
	/// @DnDParent : 212C1EC4
	/// @DnDArgument : "obj" "obj_rover_1"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_rover_1"
	var l56DC6D61_0 = false;
	l56DC6D61_0 = instance_exists(obj_rover_1);
	if(!l56DC6D61_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 029798DA
		/// @DnDApplyTo : obj_player_parent
		/// @DnDParent : 56DC6D61
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		with(obj_player_parent) var l029798DA_0 = cooldown <= 0;
		if(l029798DA_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CECAF31
			/// @DnDApplyTo : obj_player_parent
			/// @DnDParent : 029798DA
			/// @DnDArgument : "expr" "-40"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bones"
			with(obj_player_parent) {
			bones += -40;
			
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DA8A00F
			/// @DnDApplyTo : obj_player_parent
			/// @DnDParent : 029798DA
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "cooldown"
			with(obj_player_parent) {
			cooldown = 3;
			
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5473453B
			/// @DnDComment : makes rover$(13_10)upgrade # 3$(13_10)available
			/// @DnDApplyTo : obj_rover_3
			/// @DnDParent : 029798DA
			/// @DnDArgument : "spriteind" "spr_button_vulcanb"
			/// @DnDSaveInfo : "spriteind" "spr_button_vulcanb"
			with(obj_rover_3) {
			sprite_index = spr_button_vulcanb;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4E674450
			/// @DnDParent : 029798DA
			/// @DnDArgument : "objectid" "obj_minigun2"
			/// @DnDArgument : "layer" ""Tank_Turrets""
			/// @DnDSaveInfo : "objectid" "obj_minigun2"
			instance_create_layer(0, 0, "Tank_Turrets", obj_minigun2);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0E99FAF2
			/// @DnDApplyTo : obj_minigun1
			/// @DnDParent : 029798DA
			with(obj_minigun1) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5B6A520B
			/// @DnDParent : 029798DA
			instance_destroy();
		}
	}
}