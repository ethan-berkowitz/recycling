// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_item()
{	
	var i = irandom(array_length(global.items) - 1);
	var inst1 = instance_create_layer(-64, 416, "items", oItem);
	inst1.player_side = "left";
	inst1.sprite_index = global.items[i][0];
	inst1.status = global.items[i][1];
	inst1.index = i;
	inst1.item_index = item_index;
	var inst2 = instance_create_layer(room_width + 64 , 416, "items", oItem);
	inst2.player_side = "right";
	inst2.sprite_index = global.items[i][0];
	inst2.status = global.items[i][1];
	inst2.index = i;
	inst2.item_index = item_index;
}