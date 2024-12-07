/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22F47939
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-100"
if(cooldown <= -100)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 4232A330
	/// @DnDParent : 22F47939
	/// @DnDArgument : "x1" "800"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-800"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "-800"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "800"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "obj_player_parent"
	/// @DnDArgument : "shape" "2"
	/// @DnDArgument : "notme" "0"
	/// @DnDArgument : "destroylist" "false"
	/// @DnDSaveInfo : "obj" "obj_player_parent"
	var l4232A330_0 = collision_ellipse(x + 800, y + -800, x + -800, y + 800, obj_player_parent, true, 0);
	if((l4232A330_0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5EE562EB
		/// @DnDParent : 4232A330
		/// @DnDArgument : "spriteind" "spr_enemy_globbershoot"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_globbershoot"
		sprite_index = spr_enemy_globbershoot;
		image_index = 0;
	}
}