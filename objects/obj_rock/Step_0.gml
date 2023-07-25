//Alright baby let's fucking roll

switch obj_keycontrol.gamestate
	{
	case 0: //Before the game has begun.
		break; //Case 0 break.
	
	case 1: //The main gameplay loop.
		if obj_keycontrol.player_correct
			{
			
			if do_animation == true
				{
				image_speed = .33;
				}
			else
				{
				image_angle -= .125;
				}
			};
		else
			{
			image_speed = 0;
			}
			
		break; //Case 1 break.
	
	case 2: //The camera move cutscene after failure.
		break; //Case 2 break.
	
	case 3: //The failure rolldown and countup.
	
		if do_animation == true
				{
				image_speed = -1.5;
				}
			else
				{
				image_angle += 10;
				}
	
		break; //Case 3 break.
		
	case 4: //The results screen.
		if do_animation == true
				{
				image_speed = -1.5;
				}
			else
				{
				image_angle += 10;
				}
	
		if global.do_rock_rotation
			{
			image_angle = 0; //Just setting rotation back to normal when it's sliding down.
			}
	
		if x > (0 - (sprite_width / 1.5))
			{
			hspeed = -15;
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