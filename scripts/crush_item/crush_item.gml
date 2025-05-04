
function crush_item()
{
	//if (player_side = "left")
	//	array_push(global.p1_crushed_items, global.items[index][1]);
	//else
	//	array_push(global.p2_crushed_items, global.items[index][1]);
	check_sync("crush");
	random_destruction_sound();
	instance_destroy();
}