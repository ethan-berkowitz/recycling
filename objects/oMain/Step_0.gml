if (item_counter >= item_timer)
{
	var inst1 = instance_create_layer(-64, 416, "items", oItem);
	inst1.player_side = "left";
	var inst2 = instance_create_layer(room_width + 64 , 416, "items", oItem);
	inst2.player_side = "right";
	item_counter = 0;
}
item_counter++;











