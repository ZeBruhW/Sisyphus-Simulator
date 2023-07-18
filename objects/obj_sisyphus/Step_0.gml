//Sweat VFX

if ((obj_keycontrol.player_correct = true) and canSweat == true) {
	
	canSweat = false;
	var randomTime = irandom_range(-1,2);
	alarm_set(0, 8 + randomTime);
	
	part_particles_create(obj_Particle_setup.particle_System, x + 11, y - 118, obj_Particle_setup.particle_Sweat, 3 );
	};
