// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function portal_item()
{
	var x_move = 1;
	var spin = 8;
	if (player_side == "left")
	{
		x += x_move;
		image_angle -= spin;
	}
	else
	{
		x -= x_move;
		image_angle += spin;
	}
	y -= 0.5;
	image_alpha -= 0.02;
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
	
}