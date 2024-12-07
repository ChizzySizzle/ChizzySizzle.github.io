/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C1981D6
/// @DnDArgument : "var" "pierce"
pierce = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 242306E1
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0048CDD5
/// @DnDArgument : "var" "spawn_counter"
spawn_counter = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3B20FE1C
/// @DnDArgument : "expr" "room = Room1"
if(room = Room1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F6CCB35
	/// @DnDParent : 3B20FE1C
	/// @DnDArgument : "expr" "obj_small_spawner"
	/// @DnDArgument : "var" "bugsmall"
	bugsmall = obj_small_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6635132D
	/// @DnDParent : 3B20FE1C
	/// @DnDArgument : "expr" "obj_big_spawner"
	/// @DnDArgument : "var" "bugbig"
	bugbig = obj_big_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F6AB6A8
	/// @DnDParent : 3B20FE1C
	/// @DnDArgument : "expr" "200"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 200;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 387F43FE
	/// @DnDParent : 3B20FE1C
	/// @DnDArgument : "health" "75"
	
	__dnd_health = real(75);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39F12238
	/// @DnDParent : 3B20FE1C
	/// @DnDArgument : "expr" "50"
	/// @DnDArgument : "var" "bones"
	bones = 50;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 07E4FEF1
/// @DnDArgument : "expr" "room = Room2"
if(room = Room2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52D3774E
	/// @DnDParent : 07E4FEF1
	/// @DnDArgument : "expr" "obj_small_spawner"
	/// @DnDArgument : "var" "bugsmall"
	bugsmall = obj_small_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F34AF0B
	/// @DnDParent : 07E4FEF1
	/// @DnDArgument : "expr" "obj_big_spawner"
	/// @DnDArgument : "var" "bugbig"
	bugbig = obj_big_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78014611
	/// @DnDParent : 07E4FEF1
	/// @DnDArgument : "expr" "200"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 200;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 288A47C8
	/// @DnDParent : 07E4FEF1
	/// @DnDArgument : "health" "125"
	
	__dnd_health = real(125);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FDE6202
	/// @DnDParent : 07E4FEF1
	/// @DnDArgument : "expr" "75"
	/// @DnDArgument : "var" "bones"
	bones = 75;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2D4965F6
/// @DnDArgument : "expr" "room = Room3"
if(room = Room3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D3EF8F5
	/// @DnDParent : 2D4965F6
	/// @DnDArgument : "expr" "obj_small_spawner"
	/// @DnDArgument : "var" "bugsmall"
	bugsmall = obj_small_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B6BFE8D
	/// @DnDParent : 2D4965F6
	/// @DnDArgument : "expr" "obj_big_spawner"
	/// @DnDArgument : "var" "bugbig"
	bugbig = obj_big_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F27A53D
	/// @DnDParent : 2D4965F6
	/// @DnDArgument : "expr" "200"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 200;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 5933987E
	/// @DnDParent : 2D4965F6
	/// @DnDArgument : "health" "150"
	
	__dnd_health = real(150);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CD18E20
	/// @DnDParent : 2D4965F6
	/// @DnDArgument : "expr" "75"
	/// @DnDArgument : "var" "bones"
	bones = 75;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2A32BA46
/// @DnDArgument : "expr" "room = Room4"
if(room = Room4)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23D48871
	/// @DnDParent : 2A32BA46
	/// @DnDArgument : "expr" "obj_small_spawner"
	/// @DnDArgument : "var" "bugsmall"
	bugsmall = obj_small_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FCE4FFB
	/// @DnDParent : 2A32BA46
	/// @DnDArgument : "expr" "obj_big_spawner"
	/// @DnDArgument : "var" "bugbig"
	bugbig = obj_big_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63DE1F50
	/// @DnDParent : 2A32BA46
	/// @DnDArgument : "expr" "200"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 200;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 44D292FC
	/// @DnDParent : 2A32BA46
	/// @DnDArgument : "health" "175"
	
	__dnd_health = real(175);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C4EF009
	/// @DnDParent : 2A32BA46
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "bones"
	bones = 100;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73807CEE
/// @DnDArgument : "expr" "room = Room5"
if(room = Room5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 641D15DA
	/// @DnDParent : 73807CEE
	/// @DnDArgument : "expr" "obj_small_spawner"
	/// @DnDArgument : "var" "bugsmall"
	bugsmall = obj_small_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 239385DA
	/// @DnDParent : 73807CEE
	/// @DnDArgument : "expr" "obj_big_spawner"
	/// @DnDArgument : "var" "bugbig"
	bugbig = obj_big_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49889CD6
	/// @DnDParent : 73807CEE
	/// @DnDArgument : "expr" "230"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 230;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 67FF0834
	/// @DnDParent : 73807CEE
	/// @DnDArgument : "health" "225"
	
	__dnd_health = real(225);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30C0A650
	/// @DnDParent : 73807CEE
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "bones"
	bones = 100;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6C5F3047
/// @DnDArgument : "expr" "room = Room6"
if(room = Room6)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0077D69E
	/// @DnDParent : 6C5F3047
	/// @DnDArgument : "expr" "obj_small_spawner"
	/// @DnDArgument : "var" "bugsmall"
	bugsmall = obj_small_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6383BB53
	/// @DnDParent : 6C5F3047
	/// @DnDArgument : "expr" "obj_big_spawner"
	/// @DnDArgument : "var" "bugbig"
	bugbig = obj_big_spawner;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39CFEAC6
	/// @DnDParent : 6C5F3047
	/// @DnDArgument : "expr" "250"
	/// @DnDArgument : "var" "spawn_rate"
	spawn_rate = 250;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 05047168
	/// @DnDParent : 6C5F3047
	/// @DnDArgument : "health" "300"
	
	__dnd_health = real(300);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A85A0BB
	/// @DnDParent : 6C5F3047
	/// @DnDArgument : "var" "bones"
	bones = 0;
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 54B28E2C
/// @DnDArgument : "var" "hp"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
hp = __dnd_health;