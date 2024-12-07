/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 491B5E76
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 187CB5F3
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D5B9BE2
	/// @DnDParent : 187CB5F3
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52F3EA41
/// @DnDArgument : "expr" "random_range(1,5)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "burrowCountdown"
burrowCountdown += random_range(1,5);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1C3102EA
/// @DnDArgument : "expr" "image_xscale < 1"
if(image_xscale < 1)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3D08D907
	/// @DnDParent : 1C3102EA
	/// @DnDArgument : "expr" "burrowCountdown < 1200"
	if(burrowCountdown < 1200)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1F60F5D2
		/// @DnDParent : 3D08D907
		speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 66ADFD8C
		/// @DnDParent : 3D08D907
		/// @DnDArgument : "xscale" ".02"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" ".02"
		/// @DnDArgument : "yscale_relative" "1"
		image_xscale += .02;
		image_yscale += .02;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7F8453F5
/// @DnDArgument : "expr" "burrowCountdown > 1500"
if(burrowCountdown > 1500)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 47340C5C
	/// @DnDParent : 7F8453F5
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6CC18D11
	/// @DnDParent : 7F8453F5
	/// @DnDArgument : "xscale" "-0.02"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.02"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.02;
	image_yscale += -0.02;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3989F46E
	/// @DnDParent : 7F8453F5
	/// @DnDArgument : "expr" "image_xscale <= 0"
	if(image_xscale <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7D4C85DE
		/// @DnDParent : 3989F46E
		/// @DnDArgument : "x" "random_range(100,2550)"
		/// @DnDArgument : "y" "random_range(100,1450)"
		x = random_range(100,2550);
		y = random_range(100,1450);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EAD2011
		/// @DnDParent : 3989F46E
		/// @DnDArgument : "var" "burrowCountdown"
		burrowCountdown = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2817002C
/// @DnDArgument : "expr" "image_xscale == 1"
if(image_xscale == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 08E7EF9B
	/// @DnDParent : 2817002C
	/// @DnDArgument : "x" "obj_player_parent.x"
	/// @DnDArgument : "y" "obj_player_parent.y"
	direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2794CA35
	/// @DnDParent : 2817002C
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 5733F34D
	/// @DnDParent : 2817002C
	/// @DnDArgument : "angle" "direction -90"
	image_angle = direction -90;
}