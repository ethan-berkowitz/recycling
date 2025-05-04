
function check_sync(destruction_type)
{
	if (!is_undefined(global.item_destruction[item_index]))
	{
	    if (global.item_destruction[item_index] == destruction_type)
		{
			array_push(global.synced_items, global.items[index][1]);
	        oMain.sync++;
		}
	    else
	        oMain.chaos++;
	}
	else
	    global.item_destruction[item_index] = destruction_type;
}