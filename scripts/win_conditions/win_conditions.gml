// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function win_conditions()
{
	var len = array_length(global.synced_items);
	found_poop = false;

	for (var i = 0; i < len; i++)
	{
		if (global.synced_items[i] == "Poop")
		{
			found_poop = true;
			break;
		}
	}
	if (found_poop == true)
		draw_text(500, 500, "Found poop");
}