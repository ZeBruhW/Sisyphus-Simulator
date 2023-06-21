//This is going to be debug text display stuff. Delete this later.
draw_text(0, 0, "player_correct: " + string(player_correct));
draw_text(0, 10, "in_play: "+ string(in_play));
draw_text(0, 20, "failure_timer: " + string(failure_timer));
draw_text(0, 30, "time_pushed: " + string(time_pushed));

//Tell the player what button to push

draw_text(0, 60, "Push D");

for (var i = 0; i < array_length(current_key_demands); i += 1)
	{
	if current_key_demands[i] != 0
		{
		draw_text(0, 70 + (i * 10), chr(current_key_demands[i]));
		}
	}
