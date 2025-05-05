draw_set_font(fDefault);
//draw_text(50, 50, string(global.synced_items));
draw_set_font(fClickToStart);



if (room == LoseRoom)
	draw_text(100, 100, "You Lose!");
else
{
	var xx = 500;
	var yy = 300;
	var line_spacing = 30;
	var line_width = 300;
	draw_text(100, 100, "You Win!");
	draw_set_font(fWin);
	draw_text_ext(xx, yy, text, line_spacing, line_width);
}












