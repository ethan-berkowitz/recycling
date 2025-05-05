
function check_sync(destruction_type)
{
	if (!is_undefined(global.item_destruction[item_index]))
	{
	    if (global.item_destruction[item_index] == destruction_type)
		{
			if (destruction_type == "portal")
			{
				audio_play_sound(aPortalSync, 1, 0);
				array_push(global.synced_items, global.items[index][1]);
			}
	        oMain.sync++;
		}
	    else
		{
			audio_play_sound(aDesyncSound, 1, 0, DESYNC_GAIN);
	        oMain.chaos++;
		}
	}
	else
	    global.item_destruction[item_index] = destruction_type;
}