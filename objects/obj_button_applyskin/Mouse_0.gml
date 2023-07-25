if (obj_equipcontrol.rock_selected[0])
	{
	//Only do this if you've got the rock unlocked.
	global.equipped_rock = obj_equipcontrol.rock_selected[1]; //Pass it the sprite babyy.
	global.do_rock_anim = obj_equipcontrol.rock_selected[4]; //Storing whether or not the sprite was hand-animated.
	global.do_rock_rotation = obj_equipcontrol.rock_selected[5];
	new_equip_feedback = max_equip_feedback;
	};