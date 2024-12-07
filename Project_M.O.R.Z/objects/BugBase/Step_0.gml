/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0419009D
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 170429D6
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "spawn_counter"
spawn_counter += 1;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 2D28EBEE
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "hp"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health < hp)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08736282
	/// @DnDParent : 2D28EBEE
	/// @DnDArgument : "var" "spawn_counter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "spawn_rate"
	if(spawn_counter >= spawn_rate)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 33624197
		/// @DnDParent : 08736282
		/// @DnDArgument : "xpos" "random_range(100,2550)"
		/// @DnDArgument : "ypos" "random_range(100,1450)"
		/// @DnDArgument : "objectid" "bugsmall"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(random_range(100,2550), random_range(100,1450), "Enemy_Bullet", bugsmall);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7113C001
		/// @DnDParent : 08736282
		/// @DnDArgument : "xpos" "random_range(100,2550)"
		/// @DnDArgument : "ypos" "random_range(100,1450)"
		/// @DnDArgument : "objectid" "bugbig"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(random_range(100,2550), random_range(100,1450), "Enemy_Bullet", bugbig);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 009E138A
		/// @DnDParent : 08736282
		/// @DnDArgument : "var" "spawn_counter"
		spawn_counter = 0;
	}
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 71148793
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B4CAB3A
	/// @DnDParent : 71148793
	/// @DnDArgument : "expr" "bones"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_upgradeData.bones"
	obj_upgradeData.bones += bones;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5222FEAD
	/// @DnDParent : 71148793
	/// @DnDArgument : "times" "4"
	repeat(4)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 673CFB5F
		/// @DnDParent : 5222FEAD
		/// @DnDArgument : "xpos" "random_range(-150,150)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "random_range(-150,150)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "bugsmall"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + random_range(-150,150), y + random_range(-150,150), "Enemy_Bullet", bugsmall);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6949CD79
		/// @DnDParent : 5222FEAD
		/// @DnDArgument : "xpos" "random_range(100,2550)"
		/// @DnDArgument : "ypos" "random_range(100,1450)"
		/// @DnDArgument : "objectid" "bugsmall"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(random_range(100,2550), random_range(100,1450), "Enemy_Bullet", bugsmall);
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 76003CA9
	/// @DnDParent : 71148793
	
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 73621337
		/// @DnDParent : 76003CA9
		/// @DnDArgument : "xpos" "random_range(-150,150)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "random_range(-150,150)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "bugbig"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(x + random_range(-150,150), y + random_range(-150,150), "Enemy_Bullet", bugbig);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 32F3E9D8
		/// @DnDParent : 76003CA9
		/// @DnDArgument : "xpos" "random_range(100,2550)"
		/// @DnDArgument : "ypos" "random_range(100,1450)"
		/// @DnDArgument : "objectid" "bugbig"
		/// @DnDArgument : "layer" ""Enemy_Bullet""
		instance_create_layer(random_range(100,2550), random_range(100,1450), "Enemy_Bullet", bugbig);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 100C91E8
	/// @DnDParent : 71148793
	instance_destroy();
}