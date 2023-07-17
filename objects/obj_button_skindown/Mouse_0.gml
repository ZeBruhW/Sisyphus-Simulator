if (obj_equipcontrol.array_position < (obj_unlockcontrol.number_of_rocks - 1)) and (obj_equipcontrol.scroll_lockout == 0)
	{
	obj_equipcontrol.array_position += 1;
	obj_equipcontrol.scroll_lockout = obj_equipcontrol.max_scroll_lockout;
	}