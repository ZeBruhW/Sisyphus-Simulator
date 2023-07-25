// You can write your code in this editor

//Tabbing through the rocks.
//If you push S or down, go up the list of skins.
//This makes sense, I promise.
if (keyboard_check_direct(ord("S")) or keyboard_check_direct(vk_down)) and (array_position < (obj_unlockcontrol.number_of_rocks - 1)) and (scroll_lockout == 0)
	{
	array_position += 1;
	scroll_lockout = max_scroll_lockout;
	}
	
//If you push W or up, go down the list of skins.
//This makes sense, I promise.
if (keyboard_check_direct(ord("W")) or keyboard_check_direct(vk_up)) and (array_position != 0) and (scroll_lockout == 0)
	{
	array_position -= 1;
	scroll_lockout = max_scroll_lockout;
	}
rock_selected = obj_unlockcontrol.rockunlocks[array_position];

//Equipping selected rocks
if (keyboard_check_direct(vk_enter) and rock_selected[0])
	{
	//Only do this if you've got the rock unlocked.
	global.equipped_rock = rock_selected[1]; //Pass it the sprite babyy.
	global.do_rock_anim = rock_selected[4]; //Storing whether or not the sprite was hand-animated.
	global.do_rock_rotation = rock_selected[5];
	new_equip_feedback = new_equip_feedback_max;
	};
	
//Prevents you from tabbing through everything in one press of a button. This will happen and it is ANNOYING.
if scroll_lockout != 0
	{
	scroll_lockout -= 1;
	};

//Count down the timer to tell you you have a new thing equipped.
if new_equip_feedback > 0
	{
	new_equip_feedback -= 1;
	};
