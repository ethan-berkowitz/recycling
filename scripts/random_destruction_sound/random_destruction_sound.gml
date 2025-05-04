// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_destruction_sound()
{
	var crush_array = [aCrackle,
						aCrunch,
						aCrush1,
						aCrush2,
						aCrush3,
						aCrush4,
						aCrush5,
						aCrush6,
						aCrush7,
						aCrush8,
						aCrush9,
						aCrush10,
						aCrush11,
						aCrush12,
						aCrush13,
						aCrush14,
						aCrush15,
						aCrush16,
						aCrush17,
						aCrush18,
						aCrush19,
						aCrush20,
						aCrush21,
						aCrush22,
						aCrush23]
	var i = irandom(array_length(crush_array) - 1);
	audio_play_sound(crush_array[i], 1, 0, 1);
}