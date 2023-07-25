//Display the currently hovered rock's name.
if rock_selected[0] == true
	{
	draw_sprite_ext(rock_selected[1], 0, 208, 408, 2.5, 2.5, 0, c_white, 1);
	};
else //If it's not unlocked, draw it with the padlock on it.
	{
	draw_sprite_ext(rock_selected[1], 0, 208, 408, 2.5, 2.5, 0, c_black, 1);
	draw_sprite_ext(spr_padlock, 0, 208, 408, 2, 2, 0, c_white, 1);
	};

draw_set_font(fnt_menularge);
draw_set_color(c_black);
draw_set_halign(fa_center);

//Draw the currently selected rock's name.
draw_text(882.5, 170, rock_selected[2]);

//draw_set_font(fnt_menu);
draw_set_font(fnt_menumed);

//Display the currently hovered rock's flavor text.
for (var i = 0; i < array_length(rock_selected[3]); i++)
	{
	draw_text(883, 296 + (i * 48), rock_selected[3][i]);
	}


if new_equip_feedback > 0
	{
	draw_text(883, 550, "Equipped!");
	}