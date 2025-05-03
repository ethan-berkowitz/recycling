// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_destruction_sound()
{
	var i = irandom(1);
	if (i == 0)
		audio_play_sound(aCrackle, 1, 0);
	else
		audio_play_sound(aCrunch, 1, 0);
}