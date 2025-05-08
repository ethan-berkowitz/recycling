
function choose_scenario()
{
	var found_items = ds_map_create();
	var len = array_length(global.synced_items);
	for (var i = 0; i < len; i++)
	    ds_map_set(found_items, global.synced_items[i], true);

	found_poop = ds_map_exists(found_items, "Poop");
	found_balloons = ds_map_exists(found_items, "Balloons");
	found_puppy = ds_map_exists(found_items, "Puppy");
	found_coffee = ds_map_exists(found_items, "Coffee");
	found_thoughtbubble = ds_map_exists(found_items, "Thoughtbubble");
	found_modernart = ds_map_exists(found_items, "Modernart");
	found_bomb = ds_map_exists(found_items, "Bomb");
	found_sadbaby = ds_map_exists(found_items, "Sadbaby");
	found_curse = ds_map_exists(found_items, "Curse");
	found_plane = ds_map_exists(found_items, "Plane");
	found_norm = ds_map_exists(found_items, "Norm");
	found_flowers = ds_map_exists(found_items, "Flowers");
	found_santa = ds_map_exists(found_items, "Santa");
	found_money = ds_map_exists(found_items, "Money");

	ds_map_destroy(found_items);

	var all_scenarios = [
	    [found_balloons && found_puppy,
	     "You wanted both balloons and dogs to exist in your new utopia. Dogs view balloons as their mortal enemy, so they started a war with the balloons, which claimed many victims, both soldiers and civilians, and ultimately the balloons won. Your utopia is now a post-war society with generational trauma."],
     
	    [found_coffee && found_thoughtbubble,
	     "Your utopia has loads of thoughts and coffee! As drinking lots of coffee makes thoughts run wild, your utopia now suffers from caffeine-induced anxiety."],
     
	    [found_modernart && found_bomb,
	     "You saved your utopia from modern art and bombs! Phew! Unfortunately, now nobody has anything meaningful to tinker with, so everyone becomes idle and bored and start gossiping about each other, creating a paranoid atmosphere to this utopia."],
     
	    [found_sadbaby && found_puppy,
	     "You saved dogs and crying babies to live in your utopia, how big-hearted of you <3 those two drove each other insane by barking and crying and everyone's heads exploded."],
     
	    [found_curse && found_modernart,
	     "You allowed cursing and modern art into your utopia. Everyone is extremely satisfied because they're able to express themselves freely <3 Good job!"],
     
	    [found_poop && found_modernart,
	     "You wanted poo and modern art in your utopia. Now all the rage amongst the modern artist is smearing their canvasses with their own poo. It's called cacaism, everyone has to wear respirators when they go to galleries, but the art pieces create lots of positive response in the viewers so everything worked out!"],
     
	    [found_plane && found_sadbaby,
	     "Your utopia has airplanes and crying babies.............. I'm not gonna say anything more about that."],
     
	    [found_flowers && found_thoughtbubble,
	     "You saved thoughts and flowers to have in your utopia, you hippie! Peace out!"],
     
	    [found_santa && found_money,
	     "Your utopia has money and Santa Claus. Santa started to get greedy since many people were throwing money at him to bring them presents. Santa created a sweatshop and exploits its workers. Santa has become the richest man in your utopia and he will never stop wanting more money."]
	];
	
	var regular_arr = [];
	for (var i = 0; i < array_length(all_scenarios); i++) {
	    if (all_scenarios[i][0]) {
	        array_push(regular_arr, all_scenarios[i][1]);
	    }
	}

	var i = 0;
	var len = array_length(regular_arr);
	if (len > 0 && text_chosen == false) {
	    text_chosen = true;
	    i = irandom(len - 1);
	}
	if (len > 0) {
	    text = regular_arr[i];
	}
}
