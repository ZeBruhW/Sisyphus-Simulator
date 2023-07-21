//Alright baby let's fucking roll

switch obj_keycontrol.gamestate
	{
	case 0: //Before the game has begun.
		break; //Case 0 break.
	
	case 1: //The main gameplay loop.
		if obj_keycontrol.player_correct
			{
			image_angle -= rollspeed;
			};
		break; //Case 1 break.
	
	case 2: //The camera move cutscene after failure.
		break; //Case 2 break.
	
	case 3: //The failure rolldown and countup.
		image_angle -= fallspeed;
		break; //Case 3 break.
		
	case 4: //The results screen.
		image_angle -= fallspeed;
		if x > (0 - (sprite_width / 2))
			{
			hspeed = -10;
			}
		else
			{
			hspeed = 0;
			}
		break; //Case 4 break.
	};

// Dust VFX
if ((obj_keycontrol.player_correct = true) and canDust == true) {
	
	canDust = false;
	var randomTime = irandom_range(-1,2);
	alarm_set(0, 8 + randomTime);
	
	part_particles_create(obj_Particle_setup.particle_System, x-25, y+120, obj_Particle_setup.particle_Dust, 10 );
	part_particles_create(obj_Particle_setup.particle_System, x+90, y+80, obj_Particle_setup.particle_Dust, 10 );
	};