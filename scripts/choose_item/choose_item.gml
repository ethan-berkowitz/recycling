// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_item()
{	
	var i = irandom(array_length(global.items) - 1);
	sprite_index = global.items[i][0];
	status = global.items[i][1];
	index = i;
}