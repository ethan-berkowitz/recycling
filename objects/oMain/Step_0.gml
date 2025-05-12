if (mute == true)
	audio_stop_sound(aMainMusic);
else
	audio_master_gain(1);

if keyboard_check_pressed(ord("R"))
	game_restart();
if keyboard_check_pressed(ord("M"))
	mute = true;


if (room != Main)
	exit;
if (item_counter >= item_timer)
{
	choose_item();
	item_counter = 0;
	item_index++;
}
item_counter++;


	
if (sync >= MAX_SYNC)
{
	audio_stop_all();
	room_goto(WinRoom);
}
else if (chaos >= MAX_CHAOS)
{
	audio_stop_all();
	room_goto(LoseRoom);
}
