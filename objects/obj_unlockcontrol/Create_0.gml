/// @description Insert description here
// You can write your code in this editor

//Variables, bitch
do_unlock = false;
show_new_unlock = false;

//Define all the possible rock unlocks.
//They don't need to be in order, don't worry.
rockunlocks[0][0] = true; //Whether or not this is unlocked.
rockunlocks[0][1] = spr_rock; //The sprite of the unlock.
rockunlocks[0][2] = "Rock"; //The name of the unlock.
rockunlocks[0][3] = "It is your rock." //The flavor text of the unlock.

rockunlocks[1][0] = false;
rockunlocks[1][1] = spr_rock_red;
rockunlocks[1][2] = "Red rock";
rockunlocks[1][3] = "It looks kinda like a meatball.";

rockunlocks[2][0] = false;
rockunlocks[2][1] = spr_rock_blue;
rockunlocks[2][2] = "Blue rock";
rockunlocks[2][3] = "Definitely not a natural color for a rock. Coincidentally smells like paint.";

rockunlocks[3][0] = false;
rockunlocks[3][1] = spr_rock_grey;
rockunlocks[3][2] = "Grey Rock";
rockunlocks[3][3] = "Somehow more boring than the normal rock.";

rockunlocks[4][0] = false;
rockunlocks[4][1] = spr_rock_cheeto;
rockunlocks[4][2] = "Orange rock";
rockunlocks[4][3] = "Contrary to appearance, it is a rock, not a cheese puff.";

rockunlocks[5][0] = false;
rockunlocks[5][1] = spr_rock_negative;
rockunlocks[5][2] = "Inverted Rock";
rockunlocks[5][3] = "This isn't how light works. But within the magic of video games, anything can be possible.";

rockunlocks[6][0] = false;
rockunlocks[6][1] = spr_rock_snowball;
rockunlocks[6][2] = "Snowball";
rockunlocks[6][3] = "If you close your eyes, you can imagine you're preparing to build the world's best snowman!";

rockunlocks[7][0] = false;
rockunlocks[7][1] = spr_rock_old;
rockunlocks[7][2] = "Programmer Art Rock";
rockunlocks[7][3] = "remember to put something here before release";

rockunlocks[8][0] = false;
rockunlocks[8][1] = spr_rock_dwayne;
rockunlocks[8][2] = "The Rock";
rockunlocks[8][3] = "CAN YOU SMEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEELLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL";

//The unlocks for sysiphus.
//These aren't in yet because there isn't anything yet.

//All the equippables.
//These aren't in yet because there isn't anything yet.

//The battle pass rewards.
//These have to be in order.
//This starts at 1 for future clarity reasons.
//When setting something to be unlocked, do rewardlist[level][0] = true.
//That'll unlock it fine, if I did my math right.
//If you don't want a reward that tier, set it to just say "Empty."

rewardlist[1] = rockunlocks[1];
rewardlist[2] = rockunlocks[2];
rewardlist[3] = rockunlocks[3];

number_of_rocks = array_length(rockunlocks);
rewardcap = array_length(rewardlist);