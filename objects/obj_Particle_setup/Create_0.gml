// Dust VFX
particle_System = part_system_create();

particle_Dust = part_type_create();

part_type_sprite(particle_Dust, spr_Dust, 0, 0, 1);
part_type_size(particle_Dust, 1, 15, 0.001, 0);

part_type_direction(particle_Dust, -90, 90, 0, 1);
part_type_speed(particle_Dust, 0.5, 1, -0.004, 0);

part_type_life(particle_Dust, 60, 120);

part_type_orientation(particle_Dust, 0, 359, 0.1, 1, 0);

part_type_alpha3(particle_Dust, 0.1, 0.2, 0.01);

// Sweat VFX
particle_System = part_system_create();

particle_Sweat = part_type_create();

part_type_sprite(particle_Sweat, spr_Sweat, 0, 0, 1);
part_type_size(particle_Sweat, 1, 3, 0.001, 0);

part_type_direction(particle_Sweat, -90, 90, 0, 1);
part_type_speed(particle_Sweat, 0.5, 1, -0.004, 0);

part_type_life(particle_Sweat, 60, 120);

part_type_orientation(particle_Sweat, 0, 359, 0.1, 1, 0);

part_type_alpha3(particle_Sweat, 0.1, 0.2, 0.01);