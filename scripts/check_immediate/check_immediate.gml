
function check_immediate(destruction_type)
{
	if (!is_undefined(global.item_immediate[item_index]))
	{
		if (destruction_type != global.item_immediate[item_index])
			audio_play_sound(aImmediateUnsync, 1, 0);
		else if (destruction_type == "immediate")
			audio_play_sound(aImmediateNoCrush, 1, 0);
	}
	else
	    global.item_immediate[item_index] = destruction_type;
}