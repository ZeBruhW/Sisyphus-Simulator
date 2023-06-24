//Alright baby let's fucking roll

if obj_keycontrol.in_play
	{
	if obj_keycontrol.player_correct
		{
		is_rolling = true;
		is_falling = false;
		};
	else
		{
		is_rolling = false;
		is_falling = false;
		}
	};
else
	{
	is_rolling = false;
	is_falling = true;
	}

if is_rolling
	{
	image_angle -= rollspeed;
	};

if is_falling
	{
	image_angle -= fallspeed;
	};
	