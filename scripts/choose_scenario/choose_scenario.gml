
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
	found_happybaby = ds_map_exists(found_items, "Happybaby");
	found_bill = ds_map_exists(found_items, "Bill");
	found_curse = ds_map_exists(found_items, "Curse");
	found_plane = ds_map_exists(found_items, "Plane");
	found_norm = ds_map_exists(found_items, "Norm");
	found_flowers = ds_map_exists(found_items, "Flowers");
	found_santa = ds_map_exists(found_items, "Santa");
	found_money = ds_map_exists(found_items, "Money");

	ds_map_destroy(found_items);

	var win_scenarios = [
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
		 
	    [found_bill && found_curse,
	     "You saved Bill the Pony and swear words. Bill is sturdy and pure of heart. He also carries heavy loads without complaining. DO NOT USE FOUL LANGUAGE AROUND SUCH A NOBLE AND MAJESTIC CREATURE!"],
		 
	    [found_happybaby && found_plane,
	     "Your utopia has happy babies and airplanes. Babies are not very good at flying airplanes. The air traffic in your utopia is a mess, but at least the pilots are happy!"],
		 
	    [!found_sadbaby && found_happybaby,
	     "Your utopia has only babies who are happy. They never learn to regulate their emotions and grow up to be deeply anxious and mentally ill adults. Where are the therapists??"],

	    [found_flowers && found_coffee,
	     "Your utopia is coffee and flowers galore. It has never been easier to figure out what to do on a date. Romance blooms <3 Congratulations you little Cupids!"],
     
	    [found_santa && found_money,
	     "Your utopia has money and Santa Claus. Santa started to get greedy since many people were throwing money at him to bring them presents. Santa created a sweatshop and exploits its workers. Santa has become the richest man in your utopia and he will never stop wanting more money."]
	
	
	
	];
	
	var lose_scenarios = [
	    [!found_poop,
	     "Your utopia doesn't have poo. Nobody poops. Everyone dies of constipation. Well done."],
		 
	    [!found_norm,
	     "NORMINETTE IS GONE!!! THIS TRULY IS A UTOPIA!! <3<3<3"],
		 
	    [found_norm,
	     "You let Norminette enter your utopia. I don't think you were ever even going to create a utopia. You are the devil :("],

	    [true,
	     "You failed to create a utopia. Typical humans. Enjoy the apocalypse."],

	    [!found_thoughtbubble,
	     "Your utopia has no thoughts. Everyone lives on instincts. Some would argue that this is the most blissful state of being, but in this utopia they wouldn't, since they don't have thoughts to form this opinion."]
	];
	
	var regular_arr = [];
	for (var i = 0; i < array_length(win_scenarios); i++) {
	    if (win_scenarios[i][0]) {
	        array_push(regular_arr, win_scenarios[i][1]);
	    }
	}
	var backup_arr = [];
	for (var i = 0; i < array_length(lose_scenarios); i++) {
	    if (lose_scenarios[i][0]) {
	        array_push(backup_arr, lose_scenarios[i][1]);
	    }
	}
	var regular_len = array_length(regular_arr);
	var backup_len = array_length(backup_arr);
	if (regular_len > 0)
	{
	    var random_int = irandom(regular_len - 1);
		return (regular_arr[random_int]);
	}
	else if (backup_len > 0)
	{
	    var random_int = irandom(backup_len - 1);
		return (backup_arr[random_int]);
	}
	else
		return ("An error occured. It's probably your fault.");
}
