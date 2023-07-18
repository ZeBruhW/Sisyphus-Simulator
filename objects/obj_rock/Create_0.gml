//Let's set some VARIABLEEEES

//Setting the depth in frame, so that environmental objects go behind and in front of it as usual.
depth = (y * -1);

//Setting player movespeed stuff.
global.pushing_movement_rate = .25;
global.falling_movement_rate = -12;

//rollspeed = .0625;
rollspeed = global.pushing_movement_rate / 3;
fallspeed = -5;

sprite_index = global.equipped_rock;

// Dust VFX activation
canDust = true;