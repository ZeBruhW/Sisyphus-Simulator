draw_text(0, 0, "Up and down to scroll through skins.")
draw_text(0, 25, "Enter to select one.")

//Display the currently hovered rock's name.
draw_text(100, 100, rock_selected[2]);

if rock_selected[0] == true
	{
	draw_sprite_ext(rock_selected[1], 0, 300, 300, 5, 5, 0, c_white, 1);
	};
else //If it's not unlocked, draw it with the padlock on it.
	{
	draw_sprite_ext(rock_selected[1], 0, 300, 300, 5, 5, 0, c_white, .5);
	draw_sprite_ext(spr_padlock, 0, 300, 300, 3, 3, 0, c_white, 1);
	};

//Display the currently hovered rock's flavor text.
draw_text(100, 500, rock_selected[3]);


//Drawing the currently equipped rock.
draw_sprite_ext(global.equipped_rock, 0, 1000, 200, 3, 3, 0, c_white, 1);

if new_equip_feedback == 0
	{
	draw_text(900, 300, "Currently Equipped");
	}
else
	{
	draw_text(900, 300, "Equipped!");
	}