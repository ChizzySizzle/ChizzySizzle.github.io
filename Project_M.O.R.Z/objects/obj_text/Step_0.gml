/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EB88DC9
/// @DnDArgument : "code" "if (characters < message_length) { //if current character count is less than the amount in current message*$(13_10)$(13_10)hold = keyboard_check(ord(" ")); //hold is true or false if we hold 'Space' or not$(13_10)$(13_10)characters += increase * (1 + hold); //increase speed based on hold$(13_10)$(13_10)message_draw = string_copy(message[message_current], 0, characters); //copy string to current character$(13_10)$(13_10)}$(13_10)$(13_10)else { //if current character is more than the amount in the current message$(13_10)	$(13_10)if (keyboard_check_pressed(ord("	"))) {$(13_10)instance_destroy();$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(ord(" "))) { //if we press Space...$(13_10)$(13_10)if (message_current < message_end) { //if there are more messages left to show (0 -> 7, in our case)$(13_10)$(13_10)message_current += 1; //increase the message by 1$(13_10)$(13_10)message_length = string_length(message[message_current]); //get the new character length for message$(13_10)$(13_10)characters = 0; //set the characters back to 0$(13_10)$(13_10)message_draw = ""; //clear the drawn text$(13_10)$(13_10)}$(13_10)$(13_10)else { //if our messages are done (we reach 7, in our case)...$(13_10)$(13_10)instance_destroy(); //destroy the object$(13_10)$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)}$(13_10)"
if (characters < message_length) { //if current character count is less than the amount in current message*

hold = keyboard_check(ord(" ")); //hold is true or false if we hold 'Space' or not

characters += increase * (1 + hold); //increase speed based on hold

message_draw = string_copy(message[message_current], 0, characters); //copy string to current character

}

else { //if current character is more than the amount in the current message
	
if (keyboard_check_pressed(ord("	"))) {
instance_destroy();
}

if (keyboard_check_pressed(ord(" "))) { //if we press Space...

if (message_current < message_end) { //if there are more messages left to show (0 -> 7, in our case)

message_current += 1; //increase the message by 1

message_length = string_length(message[message_current]); //get the new character length for message

characters = 0; //set the characters back to 0

message_draw = ""; //clear the drawn text

}

else { //if our messages are done (we reach 7, in our case)...

instance_destroy(); //destroy the object

}

}

}