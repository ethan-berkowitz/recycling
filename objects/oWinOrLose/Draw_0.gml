draw_set_font(fDefault);
//draw_text(50, 50, string(global.synced_items));
draw_set_font(fClickToStart);

var line_spacing = 30;
var line_width = 350;
var xx = room_width/2 - line_width/2;
var yy = 300;

draw_text(80, 100, "SORTING COMPLETE");
draw_set_font(fWin);
draw_text_ext(xx, yy, scenario_text, line_spacing, line_width);
