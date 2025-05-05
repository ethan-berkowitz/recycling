randomize();

item_timer = ITEM_FREQUENCY;
item_counter = item_timer;

item_index = 0;

global.items = [[sNorm, "Norm"],
				[sPuppy, "Puppy"],
				[sPoop, "Poop"],
				[sSadbaby, "Sadbaby"],
				[sGhost, "Ghost"],
				[sBomb, "Bomb"],
				[sThoughtbubble, "Thoughtbubble"],
				[sBee, "Bee"],
				[sChatgpt, "Chatgpt"],
				[sModernart, "Modernart"],
				[sBalloons, "Balloons"],
				[sCurse, "Curse"],
				[sFootball, "Football"],
				[sCoffee, "Coffee"],
				[sPlane, "Plane"],
				[sSanta, "Santa"],
				[sFlowers, "Flowers"],
				[sHappybaby, "Happybaby"],
				[sMoney, "Money"],
				[sBill, "Bill"],
				[sIcecream, "Icecream"]];

global.p1_crushed_items = [];
global.p2_crushed_items = [];

global.synced_items = [];

sync = 0;
chaos = 0;

global.item_destruction = [];
for (var i = 0; i < 100; i++)
    global.item_destruction[i] = undefined;
	
init_sounds();






