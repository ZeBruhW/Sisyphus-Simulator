/// @description Insert description here
// You can write your code in this editor

//Setting the default skin.
global.equipped_rock = spr_rock_anim;
global.do_rock_anim = true;
global.do_rock_rotation = false;

//Variables, bitch
do_unlock = false;
show_new_unlock = false;

depth = obj_scorecontrol.depth - 1;

//Variables for drawing the battle pass menu.
furthest_left = 1;

//Define all the possible rock unlocks.
//They don't need to be in order, don't worry.
rockunlocks[0][0] = true; //Whether or not this is unlocked.
rockunlocks[0][1] = spr_rock_anim; //The sprite of the unlock.
rockunlocks[0][2] = "Rock"; //The name of the unlock.
rockunlocks[0][3][0] = "It is your rock." //The flavor text of the unlock.
rockunlocks[0][4] = true; //Whether the sprite is hand-animated or just rotates mathematically.
rockunlocks[0][5] = false; //Whether to rotate the rock to match the hill. This is for the trojan horse, mostly.

rockunlocks[1][0] = false;
rockunlocks[1][1] = spr_rock_red;
rockunlocks[1][2] = "Red rock";
rockunlocks[1][3][0] = "It looks kinda like a meatball.";
rockunlocks[1][4] = false;
rockunlocks[1][5] = false;

rockunlocks[2][0] = false;
rockunlocks[2][1] = spr_rock_blue;
rockunlocks[2][2] = "Blue rock";
rockunlocks[2][3][0] = "Definitely not a natural color for a rock.";
rockunlocks[2][3][1] = "Coincidentally smells like paint.";
rockunlocks[2][4] = false;
rockunlocks[2][5] = false;

rockunlocks[3][0] = false;
rockunlocks[3][1] = spr_rock_grey;
rockunlocks[3][2] = "Grey Rock";
rockunlocks[3][3][0] = "Somehow even more boring!";
rockunlocks[3][4] = false;
rockunlocks[3][5] = false;

rockunlocks[4][0] = false;
rockunlocks[4][1] = spr_rock_cheeto;
rockunlocks[4][2] = "Orange rock";
rockunlocks[4][3][0] = "Contrary to appearance, it is a rock,";
rockunlocks[4][3][1] = "not a cheese puff.";
rockunlocks[4][4] = false;
rockunlocks[4][5] = false;

rockunlocks[5][0] = false;
rockunlocks[5][1] = spr_rock_negative;
rockunlocks[5][2] = "Inverted Rock";
rockunlocks[5][3][0] = "This isn't how light works. But within the";
rockunlocks[5][3][1] = "magic of video games, anything";  
rockunlocks[5][3][2] = "can be possible.";
rockunlocks[5][4] = false;
rockunlocks[5][5] = false;

rockunlocks[6][0] = false;
rockunlocks[6][1] = spr_rock_snowball;
rockunlocks[6][2] = "Snowball";
rockunlocks[6][3][0] = "If you close your eyes, you can imagine";
rockunlocks[6][3][1] = "you're preparing to build the world's";
rockunlocks[6][3][2] = "best snowman!";
rockunlocks[6][4] = false;
rockunlocks[6][5] = false;

rockunlocks[7][0] = false;
rockunlocks[7][1] = spr_rock_old;
rockunlocks[7][2] = "temp_art_rock";
rockunlocks[7][3][0] = "remember to put something here before release";
rockunlocks[7][4] = false;
rockunlocks[7][5] = false;

rockunlocks[8][0] = false;
rockunlocks[8][1] = spr_rock_dwayne;
rockunlocks[8][2] = "The Rock";
rockunlocks[8][3][0] = "CAN YOU SMEEEEEEEEEEEEEEEEEEEEEEEELL";
rockunlocks[8][4] = false;
rockunlocks[8][5] = false;

rockunlocks[9][0] = false;
rockunlocks[9][1] = spr_meatball_anim;
rockunlocks[9][2] = "Meatball";
rockunlocks[9][3][0] = "Oh god. Oh god.";
rockunlocks[9][3][1] = "Oh god. Oh god.";
rockunlocks[9][3][2] = "Oh god. Oh god.";
rockunlocks[9][3][3] = "Oh god. Oh god.";
rockunlocks[9][4] = true;
rockunlocks[9][5] = false;

rockunlocks[10][0] = false;
rockunlocks[10][1] = spr_godsend_anim;
rockunlocks[10][2] = "Trojan Horse";
rockunlocks[10][3][0] = "Contains multitudes."
rockunlocks[10][4] = true;
rockunlocks[10][5] = true;

rockunlocks[11][0] = false;
rockunlocks[11][1] = spr_midasboulder_anim;
rockunlocks[11][2] = "Midas' Greed";
rockunlocks[11][3][0] = "A gift from a fellow king."
rockunlocks[11][4] = true;
rockunlocks[11][5] = false;

//The battle pass rewards.
//These have to be in order.
//This starts at 1 for future clarity reasons.
//When setting something to be unlocked, do rewardlist[level][0] = true.
//That'll unlock it fine, if I did my math right.
//If you don't want a reward that tier, set it to 0.

rewardlist[1] = rockunlocks[3];
rewardlist[2] = 0
rewardlist[3] = rockunlocks[1];
rewardlist[4] = rockunlocks[2];
rewardlist[6] = 0;
rewardlist[7] = rockunlocks[4];
rewardlist[8] = 0;
rewardlist[9] = 0;
rewardlist[10] = rockunlocks[5];
rewardlist[11] = 0;
rewardlist[12] = 0;
rewardlist[13] = rockunlocks[6];
rewardlist[14] = 0;
rewardlist[15] = 0;
rewardlist[16] = rockunlocks[7];
rewardlist[17] = 0;
rewardlist[18] = 0;
rewardlist[19] = 0;
rewardlist[20] = rockunlocks[8];
rewardlist[21] = 0;
rewardlist[22] = 0;
rewardlist[23] = 0;
rewardlist[24] = 0;
rewardlist[25] = rockunlocks[9];
rewardlist[26] = 0
rewardlist[27] = 0;
rewardlist[28] = rockunlocks[10];
rewardlist[29] = 0;
rewardlist[30] = rockunlocks[11];

number_of_rocks = array_length(rockunlocks);
rewardcap = array_length(rewardlist) - 1;