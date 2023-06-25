//On creation.

//Setting useful variables.
randomize_sprite = true;
movement_rate = .15;

//The list of potential sprites, add it to the array to make it work.
//First one is the sprite name, then the number is if it needs to be rotated.
//Some things don't need to be rotated, like trees or flowers.
potential_sprites[0][0] = spr_env_stone;
potential_sprites[0][1] = 1;

potential_sprites[1][0] = spr_env_singlerose;
potential_sprites[1][1] = 0;

potential_sprites[2][0] = spr_env_tallgrass;
potential_sprites[2][1] = 1;