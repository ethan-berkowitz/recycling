if (keyboard_check_pressed(vk_enter))
{
	audio_stop_sound(aMenuMusic);
	room_goto_next();
}