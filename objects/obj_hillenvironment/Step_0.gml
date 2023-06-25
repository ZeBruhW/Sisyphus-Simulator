//If randomize_sprite is true, then we randomize the sprite, size, and set the rotation.
if randomize_sprite == true
	{
	closeness = (y / room_height);//This is to fake parallax scrolling.
	depth = y * -1;
	
	var scale_ratio = irandom_range(5, 10);
	scale_ratio = scale_ratio * (closeness); //Faking the things further away from camera being smaller.
	image_xscale = scale_ratio;
	image_yscale = scale_ratio;
	
	var sprite_slot = irandom(array_length(potential_sprites) - 1);
	
	sprite_index = potential_sprites[sprite_slot][0];

	//Rotate the sprite if you need to. If not, don't bother.
	image_angle = potential_sprites[sprite_slot][1] * 18.5;

	if potential_sprites[sprite_slot][1] == true //Rotate the sprite if you need to rotate it, if not, don't.
		{
		image_angle = 18.5;
		};
	else
		{
		image_angle = 0;
		};
	randomize_sprite = false;
	};

//Whenever the player is pushing the right buttons, move the objects down and to the left.
//Adds extra speed based on distance from camera to fake parallax.
if obj_keycontrol.player_correct and obj_keycontrol.in_play
	{
	x -= movement_rate + (movement_rate * (power(closeness, 2)));
	y += (movement_rate + (movement_rate * (power(closeness, 2)))) / 3;
	};
	


//If the object is at the bottom of the screen, then we move it all the way back to the far left side, where it rolls on.
if y >= room_height + sprite_height and (irandom(120) == 120)
	{
	
	var spawn_offset_x = 120;
	var spawn_offset_y = obj_hill.y - (spawn_offset_x / 3)
	
	y = random_range(spawn_offset_y, room_height);
	x = room_width + spawn_offset_x;
	
	randomize_sprite = true;
	}