/// @description Insert description here
// You can write your code in this editor
layer_id = layer_get_id("Background")
background_id = layer_background_get_id(layer_id);

//Randomize the background clouds' movement rate.
layer_hspeed(layer_id, random_range(-.5, .5));