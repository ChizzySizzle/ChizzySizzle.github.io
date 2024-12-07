/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6854FA3A
/// @DnDArgument : "var" "burrowCountdown"
burrowCountdown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1263A175
/// @DnDArgument : "var" "pierce"
pierce = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43ED157C
/// @DnDArgument : "expr" "1.75"
/// @DnDArgument : "var" "spd"
spd = 1.75;

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
	/// @DnDArgument : "health" "25"
	
	__dnd_health = real(25);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45BAE419
	/// @DnDParent : 4E846307
	/// @DnDArgument : "expr" "-5"
	/// @DnDArgument : "var" "attack"
	attack = -5;
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
	/// @DnDArgument : "health" "35"
	
	__dnd_health = real(35);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F86D506
	/// @DnDParent : 2C2AA784
	/// @DnDArgument : "expr" "-5"
	/// @DnDArgument : "var" "attack"
	attack = -5;
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
	/// @DnDArgument : "health" "45"
	
	__dnd_health = real(45);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 229B7FCE
	/// @DnDParent : 655BFD63
	/// @DnDArgument : "expr" "-8"
	/// @DnDArgument : "var" "attack"
	attack = -8;
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
	/// @DnDArgument : "health" "55"
	
	__dnd_health = real(55);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 004B588B
	/// @DnDParent : 15F1D834
	/// @DnDArgument : "expr" "-8"
	/// @DnDArgument : "var" "attack"
	attack = -8;
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
	/// @DnDArgument : "health" "70"
	
	__dnd_health = real(70);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62C313E5
	/// @DnDParent : 7B305C11
	/// @DnDArgument : "expr" "-10"
	/// @DnDArgument : "var" "attack"
	attack = -10;
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
	/// @DnDArgument : "health" "80"
	
	__dnd_health = real(80);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 036B99B0
	/// @DnDParent : 36E06FE4
	/// @DnDArgument : "expr" "-10"
	/// @DnDArgument : "var" "attack"
	attack = -10;
}