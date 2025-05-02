
function toggle_crusher(input)
{
	if (y <= starting_y + 80 and keyboard_check_pressed(ord(input)))
		crush = true;
	if (crush == true)
	{
		y += 32;
		if (y > starting_y + 160)
			crush = false;
	}
	else if (y > starting_y)
		y -= 8;	
}
