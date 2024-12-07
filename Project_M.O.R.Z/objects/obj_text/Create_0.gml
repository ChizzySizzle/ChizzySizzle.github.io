/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33F6B037
/// @DnDArgument : "code" "//write your messages in an array, starting at 0, like so$(13_10)$(13_10)message[0] = "Press [Space] to Continue or [Tab] to Skip";$(13_10)$(13_10)message[1] = "Oh good, you landed.";$(13_10)$(13_10)message[2] = "Unfortunatey, we have a small problem.";$(13_10)$(13_10)message[3] = "It seems this world is already inhabited...";$(13_10)$(13_10)message[4] = "By nasty little purple things!"$(13_10)$(13_10)message[5] = "Scans show they inhabit six seperate locations across the planet."$(13_10)$(13_10)message[6] = "Take care of them so we can begin colonizing.";$(13_10)$(13_10)message[7] = "Once you begin attacking a nest, aliens will spawn until it is destroyed.";$(13_10)$(13_10)message[8] = "Destroying each nest will supply you with BONES.";$(13_10)$(13_10)message[9] = "BONES can be used to purchase upgrades for your tank.";$(13_10)$(13_10)message[10] = "When you destroy all nests and kill all bugs in a room, drive EAST to the next location.";$(13_10)$(13_10)message[11] = "Good luck!";$(13_10)$(13_10)message_current = 0; //0 is the first number in our array, and the message we are currently at$(13_10)$(13_10)message_end = 11; //7 is the last number in our array$(13_10)$(13_10)message_draw = ""; //this is what we 'write' out. It's blank right now$(13_10)$(13_10)increase = 0.5; //the speed at which new characters are added$(13_10)$(13_10)characters = 0; //how many characters have already been drawn$(13_10)$(13_10)hold = 5; //if we hold 'Space', the text will render faster$(13_10)$(13_10)message_length = string_length(message[message_current]); //get the number of characters in the first messag$(13_10)"
//write your messages in an array, starting at 0, like so

message[0] = "Press [Space] to Continue or [Tab] to Skip";

message[1] = "Oh good, you landed.";

message[2] = "Unfortunatey, we have a small problem.";

message[3] = "It seems this world is already inhabited...";

message[4] = "By nasty little purple things!"

message[5] = "Scans show they inhabit six seperate locations across the planet."

message[6] = "Take care of them so we can begin colonizing.";

message[7] = "Once you begin attacking a nest, aliens will spawn until it is destroyed.";

message[8] = "Destroying each nest will supply you with BONES.";

message[9] = "BONES can be used to purchase upgrades for your tank.";

message[10] = "When you destroy all nests and kill all bugs in a room, drive EAST to the next location.";

message[11] = "Good luck!";

message_current = 0; //0 is the first number in our array, and the message we are currently at

message_end = 11; //7 is the last number in our array

message_draw = ""; //this is what we 'write' out. It's blank right now

increase = 0.5; //the speed at which new characters are added

characters = 0; //how many characters have already been drawn

hold = 5; //if we hold 'Space', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first messag