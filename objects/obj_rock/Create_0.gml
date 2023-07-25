//Let's set some VARIABLEEEES

//Setting the depth in frame, so that environmental objects go behind and in front of it as usual.
depth = (y * -1);

//Setting player movespeed stuff.
global.pushing_movement_rate = .25;
global.falling_movement_rate = -12;


do_animation = global.do_rock_anim;
sprite_index = global.equipped_rock;
image_angle = 18.43 * global.do_rock_rotation;

image_speed = 0;

// Dust VFX activation
canDust = true;