
function crush_item()
{
	if (player_side = "left")
		array_push(global.p1_items, global.items[index]);
	else
		array_push(global.p2_items, global.items[index]);
	random_destruction_sound();
	instance_destroy(); 
}