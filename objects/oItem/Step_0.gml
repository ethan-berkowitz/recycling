if (fade == false)
{
	if (player_side == "left")
		x += spd;
	else
		x -= spd;
}
	
else
	portal_item();

if (bool_check_sync == false and fade == true)
{
	bool_check_sync = true;
	check_sync("portal");
}