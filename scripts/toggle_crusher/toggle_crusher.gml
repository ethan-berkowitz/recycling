
function toggle_crusher(input)
{
	if (y <= starting_y + 80 and keyboard_check_pressed(ord(input)))
	{
		crush = true;
		if (input == "Z")
		{
			audio_stop_sound(aCrushActivateLeft);
			if (audio_is_playing(aCrushActivateRight))
				audio_play_sound(aCrushActivateLeft, 1, 0, 0.4);
			else
				audio_play_sound(aCrushActivateLeft, 1, 0, 0.8);
		}
		else
		{
			audio_stop_sound(aCrushActivateRight);
			if (audio_is_playing(aCrushActivateLeft))
				audio_play_sound(aCrushActivateRight, 1, 0, 0.4);
			else
				audio_play_sound(aCrushActivateRight, 1, 0, 0.8);
		}
	}
	if (crush == true)
	{
		y += 32;
		if (y > starting_y + 160)
			crush = false;
	}
	else if (y > starting_y)
		y -= 8;	
}
