/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12CE32A7
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
/// @DnDHash : 61D839AD
/// @DnDArgument : "expr" "random_range(1,5)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "burrowCountdown"
burrowCountdown += random_range(1,5);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 71912698
/// @DnDArgument : "expr" "image_xscale < 1"
if(image_xscale < 1)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 35C56300
	/// @DnDParent : 71912698
	/// @DnDArgument : "expr" "burrowCountdown < 1200"
	if(burrowCountdown < 1200)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 644E5E01
		/// @DnDParent : 35C56300
		speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 6C9A400C
		/// @DnDParent : 35C56300
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
/// @DnDHash : 73D3EB9A
/// @DnDArgument : "expr" "burrowCountdown > 1500"
if(burrowCountdown > 1500)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 64E14F34
	/// @DnDParent : 73D3EB9A
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5F9D2446
	/// @DnDParent : 73D3EB9A
	/// @DnDArgument : "xscale" "-0.02"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.02"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.02;
	image_yscale += -0.02;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 163637E0
	/// @DnDParent : 73D3EB9A
	/// @DnDArgument : "expr" "image_xscale <= 0"
	if(image_xscale <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 731CDBDB
		/// @DnDParent : 163637E0
		/// @DnDArgument : "x" "random_range(100,2550)"
		/// @DnDArgument : "y" "random_range(100,1450)"
		x = random_range(100,2550);
		y = random_range(100,1450);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58B44173
		/// @DnDParent : 163637E0
		/// @DnDArgument : "var" "burrowCountdown"
		burrowCountdown = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 75DC355C
/// @DnDArgument : "expr" "image_xscale == 1"
if(image_xscale == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 21547A4F
	/// @DnDParent : 75DC355C
	/// @DnDArgument : "x" "obj_player_parent.x"
	/// @DnDArgument : "y" "obj_player_parent.y"
	direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 18307F2E
	/// @DnDParent : 75DC355C
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 648F5685
	/// @DnDParent : 75DC355C
	/// @DnDArgument : "angle" "direction -90"
	image_angle = direction -90;
}