// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_destruction_sound()
{
	var crush_array = [ aCrush1,
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
	var rare_crush_array = [aCrushRare1,
							aCrushRare2,
							aCrushRare3,
							aCrushRare4,
							aCrushRare5,
							aCrushRare6,
							aCrushRare7,
							aCrushRare8,
							aCrushRare9,
							aCrushRare10,
							aCrushRare11,
							aCrushRare12,
							aCrushRare13,
							aCrushRare14,
							aCrushRare15,
							aCrushRare16,
							aCrushRare17,
							aCrushRare18,
							aCrushRare19,
							aCrushRare20,
							aCrushRare21,
							aCrushRare22,
							aCrushRare23,
							aCrushRare24,
							aCrushRare25,
							aCrushRare26,
							aCrushRare27,
							aCrushRare28,
							aCrushRare29,
							aCrushRare30,
							aCrushRare31,
							aCrushRare32,
							aCrushRare33,
							aCrushRare34,
							aCrushRare35,
							aCrushRare36,
							aCrushRare37]

	var common_or_rare = irandom(49);
	if (common_or_rare == 0)
	{
		var i = irandom(array_length(rare_crush_array) - 1);
		audio_play_sound(rare_crush_array[i], 1, 0);	
	}
	else
	{
		var i = irandom(array_length(crush_array) - 1);
		audio_play_sound(crush_array[i], 1, 0);
	}
}