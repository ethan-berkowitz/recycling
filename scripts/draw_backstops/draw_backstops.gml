
function draw_backstops()
{
	randomize();
	backstop_arr = [];
	if (found_thoughtbubble == false)
		array_push(backstop_arr, "Your utopia has no thoughts. Everyone lives on instincts. Some would argue that this is the most blissful state of being, but in this utopia they wouldn't, since they don't have thoughts to form this opinion.");
	if (found_poop == false)
		array_push(backstop_arr, "Your utopia doesn't have poo. Nobody poops. Everyone dies of constipation. Well done.");
	if (found_norm == false)
		array_push(backstop_arr, "NORMINETTE IS GONE!!! THIS TRULY IS A UTOPIA!! <3<3<3");
	if (found_norm == true)
		array_push(backstop_arr, "You let Norminette enter your utopia. I don't think you were ever even going to create a utopia. You are the devil :(");
	
	if (text_chosen_backstop == false)
		var j = 0;
	var len = array_length(backstop_arr);
	if (len >= 1 and text_chosen_backstop == false)
	{
		text_chosen_backstop = true;
		j = irandom(len - 1);
	}
	draw_text_ext(xx, yy, backstop_arr[j], line_spacing, line_width);
	return (backstop_arr[j]);
}