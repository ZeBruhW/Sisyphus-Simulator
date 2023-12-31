//Handling the pushing animation.

switch obj_keycontrol.gamestate
	{
	case 1:
		if obj_keycontrol.player_correct
			{
			sprite_index = spr_anim_sisypush;
			image_speed = .4;
			}
		else
			{
			sprite_index = spr_anim_sisyidle;
			image_speed = 2 + (2* (obj_keycontrol.failure_timer / obj_keycontrol.failure_timer_max));
			}
		break;
	case 3:
			
	if x < (room_width + sprite_width)
			{
			x -= global.falling_movement_rate;
			y += global.falling_movement_rate / 3;
			}
	
	case 4:
	case 5:
	case 6:
	//Failure animation
		
	sprite_index = spr_anim_sisyfall;
		
		if image_index >= (image_number - 1)
			{
			image_speed = 0;
			}
		else
			{
			image_speed = .5;
			}
			
		break;
	}

//Sweat VFX
if ((obj_keycontrol.player_correct = true) and canSweat == true) {
	
	canSweat = false;
	var randomTime = irandom_range(-1,2);
	alarm_set(0, 8 + randomTime);
	
	part_particles_create(obj_Particle_setup.particle_System, x - 64, y - 48, obj_Particle_setup.particle_Sweat, 3);
	};
