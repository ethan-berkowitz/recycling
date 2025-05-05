
function win_conditions()
{
	
	var len = array_length(global.synced_items);
	found_poop = false;
	found_balloons = false;
	found_puppy = false;
	found_coffee = false;
	found_thoughtbubble = false;
	found_modernart = false;
	found_bomb = false;
	found_sadbaby = false;
	found_curse = false;
	found_plane = false;
	found_norm = false;
	found_flowers = false;
	found_santa = false;
	found_money = false;

	for (var i = 0; i < len; i++)
	{
		if (global.synced_items[i] == "Poop")
			found_poop = true;
		if (global.synced_items[i] == "Balloons")
			found_balloons = true;
		if (global.synced_items[i] == "Puppy")
			found_puppy = true;
		if (global.synced_items[i] == "Coffee")
			found_coffee = true;
		if (global.synced_items[i] == "Thoughtbubble")
			found_thoughtbubble = true;
		if (global.synced_items[i] == "Modernart")
			found_modernart = true;
		if (global.synced_items[i] == "Bomb")
			found_bomb = true;
		if (global.synced_items[i] == "Sadbaby")
			found_sadbaby = true;
		if (global.synced_items[i] == "Curse")
			found_curse = true;
		if (global.synced_items[i] == "Plane")
			found_plane = true;
		if (global.synced_items[i] == "Norm")
			found_norm = true;
		if (global.synced_items[i] == "Flowers")
			found_flowers = true;
		if (global.synced_items[i] == "Santa")
			found_santa = true;
		if (global.synced_items[i] == "Money")
			found_money = true;
	}
	
	//1,2,3,4,5,6,8,11,12,14,15,16
	
	regular_arr = [];
	
	//Regular
	if (found_balloons and found_puppy)
		array_push(regular_arr, "You wanted both balloons and dogs to exist in your new utopia. Dogs view balloons as their mortal enemy, so they started a war with the balloons, which claimed many victims, both soldiers and civilians, and ultimately the balloons won. Your utopia is now a post-war society with generational trauma.");	
	if (found_coffee and found_thoughtbubble)
		array_push(regular_arr, "Your utopia has loads of thoughts and coffee! As drinking lots of coffee makes thoughts run wild, your utopia now suffers from caffeine-induced anxiety.");
	if (found_modernart and found_bomb)
		array_push(regular_arr, "You saved your utopia from modern art and bombs! Phew! Unfortunately, now nobody has anything meaningful to tinker with, so everyone becomes idle and bored and start gossiping about each other, creating a paranoid atmosphere to this utopia.");
	if (found_sadbaby and found_puppy)
		array_push(regular_arr, "You saved dogs and crying babies to live in your utopia, how big-hearted of you <3 those two drove each other insane by barking and crying and everyone's heads exploded.");
	if (found_curse and found_modernart)
		array_push(regular_arr, "You allowed cursing and modern art into your utopia. Everyone is extremely satisfied because they're able to express themselves freely <3 Good job!");
	if (found_poop and found_modernart)
		array_push(regular_arr, "You wanted poo and modern art in your utopia. Now all the rage amongst the modern artist is smearing their canvasses with their own poo. It's called cacaism, everyone has to wear respirators when they go to galleries, but the art pieces create lots of positive response in the viewers so everything worked out!");
	if (found_plane and found_sadbaby)
		array_push(regular_arr, "Your utopia has airplanes and crying babies.............. I'm not gonna say anything more about that.");
	//if (found_flowers and found_thoughtbubble)
	//	array_push(regular_arr, "");
	if (found_flowers and found_thoughtbubble)
		array_push(regular_arr, "You saved thoughts and flowers to have in your utopia, you hippie! Peace out!");
	if (found_santa and found_money)
		array_push(regular_arr, "Your utopia has money and Santa Claus. Santa started to get greedy since many people were throwing money at him to bring them presents. Santa created a sweatshop and exploits its workers. Santa has become the richest man in your utopia and he will never stop wanting more money.");




	var i = 0;
	var len = array_length(regular_arr);
	if (len >= 1 and text_chosen == false)
	{
		text_chosen = true;
		i = irandom(len - 1);
	}
	
	
	if (len == 0)
		text = draw_backstops();
	else
		text = regular_arr[i];
}














