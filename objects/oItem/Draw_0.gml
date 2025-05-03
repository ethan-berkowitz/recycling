if (player_side == "left" or index == 0)
	draw_self();
else
	draw_sprite_ext(sprite_index, 0, x, y, -1, 1, image_angle, c_white, 1);
//draw_text(x - 18, y - 50, sprite_get_name(sprite_index));



