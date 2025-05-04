draw_set_font(fDefault);
draw_text(50, 50, string(global.synced_items));
draw_set_font(fClickToStart);



if (room == LoseRoom)
	draw_text(100, 100, "You Lose!");
else
{
	draw_text(100, 100, "You Win!");
	win_conditions();
}












