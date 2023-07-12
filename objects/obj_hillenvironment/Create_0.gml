//On creation.

//Setting useful variables.
pushing_movement_rate = global.pushing_movement_rate;
falling_movement_rate = global.falling_movement_rate;

//The list of potential sprites, add it to the array to make it work.
//First one is the sprite name, then the number is if it needs to be rotated.
//Some things don't need to be rotated, like trees or flowers.
potential_sprites[0][0] = spr_env_bush1;
potential_sprites[0][1] = 0; //1 if the sprite needs to be rotated to match the hill steepness.
potential_sprites[0][2] = 3; //Maximum size for the random scaling.

potential_sprites[1][0] = spr_env_bush2;
potential_sprites[1][1] = 0;
potential_sprites[1][2] = 3;

potential_sprites[2][0] = spr_env_peony;
potential_sprites[2][1] = 0;
potential_sprites[2][2] = 1.5;

function move_object(movespeed)
	{
	x -= movespeed;
	y += movespeed / 3;
	
	//x -= movespeed + (movespeed * (power(closeness, 2))); //Optional parallax scroll version.
	//y += (movespeed + (movespeed * (power(closeness, 2)))) / 3; //Optional parallax version.
	};
	
function randomize_sprite()
	{
	//closeness = (y / room_height); //This is to fake parallax scrolling.
	depth = y * -1;
	
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
		
	var scale_ratio = random_range(2, potential_sprites[sprite_slot][2]);
	//scale_ratio = scale_ratio * (closeness); //Faking the things further away from camera being smaller.
	image_xscale = scale_ratio;
	image_yscale = scale_ratio;
	};
	
//Randomize your sprite, big boy.
randomize_sprite();