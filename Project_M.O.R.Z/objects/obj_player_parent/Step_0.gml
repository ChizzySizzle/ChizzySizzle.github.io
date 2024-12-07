/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 398F0CB2
/// @DnDArgument : "health" "hp+healthUp"

__dnd_health = real(hp+healthUp);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55F844CD
/// @DnDArgument : "expr" "-.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -.1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 33C6FB10
speed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 6E79E301
/// @DnDArgument : "direction" "dirvar"
direction = dirvar;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1C832FCC
/// @DnDArgument : "angle" "direction + 90"
image_angle = direction + 90;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64A30A4E
/// @DnDArgument : "expr" "room != Tech_Tree"
if(room != Tech_Tree)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 555B673F
	/// @DnDParent : 64A30A4E
	/// @DnDArgument : "expr" "room != EndScreen"
	if(room != EndScreen)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7023F08A
		/// @DnDParent : 555B673F
		/// @DnDArgument : "obj" "obj_ChargeUp"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_ChargeUp"
		var l7023F08A_0 = false;
		l7023F08A_0 = instance_exists(obj_ChargeUp);
		if(!l7023F08A_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 6B712539
			/// @DnDParent : 7023F08A
			/// @DnDArgument : "key" "ord("W")"
			var l6B712539_0;
			l6B712539_0 = keyboard_check(ord("W"));
			if (l6B712539_0)
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5214980D
				/// @DnDParent : 6B712539
				image_speed = 1;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5E251BC2
				/// @DnDParent : 6B712539
				/// @DnDArgument : "speed" "-current_speed"
				speed = -current_speed;
			
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 08B1F5B2
				/// @DnDParent : 6B712539
				/// @DnDArgument : "soundid" "snd_tankMoving"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "snd_tankMoving"
				var l08B1F5B2_0 = snd_tankMoving;
				if (!audio_is_playing(l08B1F5B2_0))
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 7A7C9E4E
					/// @DnDParent : 08B1F5B2
					/// @DnDArgument : "soundid" "snd_tankMoving"
					/// @DnDSaveInfo : "soundid" "snd_tankMoving"
					audio_play_sound(snd_tankMoving, 0, 0, 1.0, undefined, 1.0);
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 2D7EE907
			/// @DnDParent : 7023F08A
			else
			{
				/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
				/// @DnDVersion : 1
				/// @DnDHash : 7797B65A
				/// @DnDParent : 2D7EE907
				/// @DnDArgument : "key" "ord("S")"
				/// @DnDArgument : "not" "1"
				var l7797B65A_0;
				l7797B65A_0 = keyboard_check(ord("S"));
				if (!l7797B65A_0)
				{
					/// @DnDAction : YoYo Games.Audio.Stop_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 65273692
					/// @DnDParent : 7797B65A
					/// @DnDArgument : "soundid" "snd_tankMoving"
					/// @DnDSaveInfo : "soundid" "snd_tankMoving"
					audio_stop_sound(snd_tankMoving);
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 469D27D3
			/// @DnDParent : 7023F08A
			/// @DnDArgument : "key" "ord("S")"
			var l469D27D3_0;
			l469D27D3_0 = keyboard_check(ord("S"));
			if (l469D27D3_0)
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 30983B96
				/// @DnDParent : 469D27D3
				image_speed = 1;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 7F062871
				/// @DnDParent : 469D27D3
				/// @DnDArgument : "speed" "current_speed"
				speed = current_speed;
			
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 7A23AC74
				/// @DnDParent : 469D27D3
				/// @DnDArgument : "soundid" "snd_tankMoving"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "snd_tankMoving"
				var l7A23AC74_0 = snd_tankMoving;
				if (!audio_is_playing(l7A23AC74_0))
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 1FD2DADE
					/// @DnDParent : 7A23AC74
					/// @DnDArgument : "soundid" "snd_tankMoving"
					/// @DnDSaveInfo : "soundid" "snd_tankMoving"
					audio_play_sound(snd_tankMoving, 0, 0, 1.0, undefined, 1.0);
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 34D5DCDD
			/// @DnDParent : 7023F08A
			else
			{
				/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
				/// @DnDVersion : 1
				/// @DnDHash : 457C5EDF
				/// @DnDParent : 34D5DCDD
				/// @DnDArgument : "key" "ord("W")"
				/// @DnDArgument : "not" "1"
				var l457C5EDF_0;
				l457C5EDF_0 = keyboard_check(ord("W"));
				if (!l457C5EDF_0)
				{
					/// @DnDAction : YoYo Games.Audio.Stop_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 424B130B
					/// @DnDParent : 457C5EDF
					/// @DnDArgument : "soundid" "snd_tankMoving"
					/// @DnDSaveInfo : "soundid" "snd_tankMoving"
					audio_stop_sound(snd_tankMoving);
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 04DE60D4
			/// @DnDParent : 7023F08A
			/// @DnDArgument : "key" "ord("D")"
			var l04DE60D4_0;
			l04DE60D4_0 = keyboard_check(ord("D"));
			if (l04DE60D4_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 35F3C6BE
				/// @DnDParent : 04DE60D4
				/// @DnDArgument : "expr" "-4"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "dirvar"
				dirvar += -4;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 3D132A26
			/// @DnDParent : 7023F08A
			/// @DnDArgument : "key" "ord("A")"
			var l3D132A26_0;
			l3D132A26_0 = keyboard_check(ord("A"));
			if (l3D132A26_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2C3EF3EB
				/// @DnDParent : 3D132A26
				/// @DnDArgument : "expr" "4"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "dirvar"
				dirvar += 4;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 3C3B7C74
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Previous_Room
	/// @DnDVersion : 1
	/// @DnDHash : 11B75202
	/// @DnDParent : 3C3B7C74
	room_goto_previous();

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 79F2FFCA
	/// @DnDApplyTo : {obj_player_parent}
	/// @DnDParent : 3C3B7C74
	/// @DnDArgument : "x" "220"
	/// @DnDArgument : "y" "360"
	with(obj_player_parent) {
	x = 220;
	y = 360;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66FB227B
	/// @DnDParent : 3C3B7C74
	/// @DnDArgument : "expr" "50"
	/// @DnDArgument : "var" "hp"
	hp = 50;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51C4AC7A
	/// @DnDApplyTo : {obj_upgradeData}
	/// @DnDParent : 3C3B7C74
	/// @DnDArgument : "expr" "lastbones"
	/// @DnDArgument : "var" "bones"
	with(obj_upgradeData) {
	bones = lastbones;
	
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41643B2D
/// @DnDArgument : "expr" "bodyspeed + speedUp"
/// @DnDArgument : "var" "current_speed"
current_speed = bodyspeed + speedUp;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2449F5A7
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "bodyspeed"
bodyspeed = 4;