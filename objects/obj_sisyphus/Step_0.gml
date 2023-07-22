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
