/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 653476D6
/// @DnDArgument : "var" "burrowCountdown"
burrowCountdown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7AA22461
/// @DnDArgument : "var" "pierce"
pierce = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43ED157C
/// @DnDArgument : "expr" "2.5"
/// @DnDArgument : "var" "spd"
spd = 2.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 120DDC7C
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23EFE6DC
/// @DnDArgument : "var" "spawn_counter"
spawn_counter = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4E846307
/// @DnDArgument : "expr" "room = Room1"
if(room = Room1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 36095CE9
	/// @DnDParent : 4E846307
	/// @DnDArgument : "health" "10"
	
	__dnd_health = real(10);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D8853BA
	/// @DnDParent : 4E846307
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "var" "attack"
	attack = -2;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2C2AA784
/// @DnDArgument : "expr" "room = Room2"
if(room = Room2)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 34C690CC
	/// @DnDParent : 2C2AA784
	/// @DnDArgument : "health" "15"
	
	__dnd_health = real(15);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F4E95DA
	/// @DnDParent : 2C2AA784
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "var" "attack"
	attack = -2;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 655BFD63
/// @DnDArgument : "expr" "room = Room3"
if(room = Room3)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 02C89BBD
	/// @DnDParent : 655BFD63
	/// @DnDArgument : "health" "20"
	
	__dnd_health = real(20);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BC5DFDA
	/// @DnDParent : 655BFD63
	/// @DnDArgument : "expr" "-6"
	/// @DnDArgument : "var" "attack"
	attack = -6;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 15F1D834
/// @DnDArgument : "expr" "room = Room4"
if(room = Room4)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 71496356
	/// @DnDParent : 15F1D834
	/// @DnDArgument : "health" "25"
	
	__dnd_health = real(25);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05731488
	/// @DnDParent : 15F1D834
	/// @DnDArgument : "expr" "-6"
	/// @DnDArgument : "var" "attack"
	attack = -6;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7B305C11
/// @DnDArgument : "expr" "room = Room5"
if(room = Room5)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 790A8E8F
	/// @DnDParent : 7B305C11
	/// @DnDArgument : "health" "35"
	
	__dnd_health = real(35);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EF4FF7D
	/// @DnDParent : 7B305C11
	/// @DnDArgument : "expr" "-8"
	/// @DnDArgument : "var" "attack"
	attack = -8;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 36E06FE4
/// @DnDArgument : "expr" "room = Room6"
if(room = Room6)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 6F9F28F6
	/// @DnDParent : 36E06FE4
	/// @DnDArgument : "health" "40"
	
	__dnd_health = real(40);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A5B338C
	/// @DnDParent : 36E06FE4
	/// @DnDArgument : "expr" "-8"
	/// @DnDArgument : "var" "attack"
	attack = -8;
}