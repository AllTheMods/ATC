import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

//      ================================================
print(" =================== ATC Misc =================== ");
print(" ================================================ ");

// https://github.com/AllTheMods/ATC/blob/master/Modpack/scripts/atc_misc.zs

//====== Variables ======
//
	var planks = <ore:plankWood>;
	var strings = <ore:string>;
	var cobweb = <minecraft:web>;
	var marble = <ore:stoneMarble>;


//====== Remove NMMlib stuff to prevent recipe conflicts
//------ List might not be "perfect" yet
//
	recipes.remove(<nmmlib:axe_bronze:*>);
	recipes.remove(<nmmlib:axe_copper:*>);
	recipes.remove(<nmmlib:axe_electrum:*>);
	recipes.remove(<nmmlib:axe_invar:*>);
	recipes.remove(<nmmlib:axe_lead:*>);
	recipes.remove(<nmmlib:axe_nickel:*>);
	recipes.remove(<nmmlib:axe_platinum:*>);
	recipes.remove(<nmmlib:axe_silver:*>);
	recipes.remove(<nmmlib:axe_tin:*>);
	recipes.remove(<nmmlib:chest_bronze:*>);
	recipes.remove(<nmmlib:chest_copper:*>);
	recipes.remove(<nmmlib:chest_electrum:*>);
	recipes.remove(<nmmlib:chest_invar:*>);
	recipes.remove(<nmmlib:chest_lead:*>);
	recipes.remove(<nmmlib:chest_nickel:*>);
	recipes.remove(<nmmlib:chest_platinum:*>);
	recipes.remove(<nmmlib:chest_silver:*>);
	recipes.remove(<nmmlib:chest_tin:*>);
	recipes.remove(<nmmlib:feet_bronze:*>);
	recipes.remove(<nmmlib:feet_copper:*>);
	recipes.remove(<nmmlib:feet_electrum:*>);
	recipes.remove(<nmmlib:feet_invar:*>);
	recipes.remove(<nmmlib:feet_lead:*>);
	recipes.remove(<nmmlib:feet_nickel:*>);
	recipes.remove(<nmmlib:feet_platinum:*>);
	recipes.remove(<nmmlib:feet_silver:*>);
	recipes.remove(<nmmlib:feet_tin:*>);
	recipes.remove(<nmmlib:gear:*>);
	recipes.remove(<nmmlib:head_bronze:*>);
	recipes.remove(<nmmlib:head_copper:*>);
	recipes.remove(<nmmlib:head_electrum:*>);
	recipes.remove(<nmmlib:head_invar:*>);
	recipes.remove(<nmmlib:head_lead:*>);
	recipes.remove(<nmmlib:head_nickel:*>);
	recipes.remove(<nmmlib:head_platinum:*>);
	recipes.remove(<nmmlib:head_silver:*>);
	recipes.remove(<nmmlib:head_tin:*>);
	recipes.remove(<nmmlib:hoe_bronze:*>);
	recipes.remove(<nmmlib:hoe_copper:*>);
	recipes.remove(<nmmlib:hoe_electrum:*>);
	recipes.remove(<nmmlib:hoe_invar:*>);
	recipes.remove(<nmmlib:hoe_lead:*>);
	recipes.remove(<nmmlib:hoe_nickel:*>);
	recipes.remove(<nmmlib:hoe_platinum:*>);
	recipes.remove(<nmmlib:hoe_silver:*>);
	recipes.remove(<nmmlib:hoe_tin:*>);
	recipes.remove(<nmmlib:legs_bronze:*>);
	recipes.remove(<nmmlib:legs_copper:*>);
	recipes.remove(<nmmlib:legs_electrum:*>);
	recipes.remove(<nmmlib:legs_invar:*>);
	recipes.remove(<nmmlib:legs_lead:*>);
	recipes.remove(<nmmlib:legs_nickel:*>);
	recipes.remove(<nmmlib:legs_platinum:*>);
	recipes.remove(<nmmlib:legs_silver:*>);
	recipes.remove(<nmmlib:legs_tin:*>);
	recipes.remove(<nmmlib:pickaxe_bronze:*>);
	recipes.remove(<nmmlib:pickaxe_copper:*>);
	recipes.remove(<nmmlib:pickaxe_electrum:*>);
	recipes.remove(<nmmlib:pickaxe_invar:*>);
	recipes.remove(<nmmlib:pickaxe_lead:*>);
	recipes.remove(<nmmlib:pickaxe_nickel:*>);
	recipes.remove(<nmmlib:pickaxe_platinum:*>);
	recipes.remove(<nmmlib:pickaxe_silver:*>);
	recipes.remove(<nmmlib:pickaxe_tin:*>);
	recipes.remove(<nmmlib:shovel_bronze:*>);
	recipes.remove(<nmmlib:shovel_copper:*>);
	recipes.remove(<nmmlib:shovel_electrum:*>);
	recipes.remove(<nmmlib:shovel_invar:*>);
	recipes.remove(<nmmlib:shovel_lead:*>);
	recipes.remove(<nmmlib:shovel_nickel:*>);
	recipes.remove(<nmmlib:shovel_platinum:*>);
	recipes.remove(<nmmlib:shovel_silver:*>);
	recipes.remove(<nmmlib:shovel_tin:*>);
	recipes.remove(<nmmlib:sword_bronze:*>);
	recipes.remove(<nmmlib:sword_copper:*>);
	recipes.remove(<nmmlib:sword_electrum:*>);
	recipes.remove(<nmmlib:sword_invar:*>);
	recipes.remove(<nmmlib:sword_lead:*>);
	recipes.remove(<nmmlib:sword_nickel:*>);
	recipes.remove(<nmmlib:sword_platinum:*>);
	recipes.remove(<nmmlib:sword_silver:*>);
	recipes.remove(<nmmlib:sword_tin:*>);


//====== Misc Tool Conflicts ======
//
	recipes.remove(<techreborn:bronzespade:0>);       //conflicts with <thermalfoundation:tool.shovel_bronze:0>
	recipes.remove(<techreborn:bronzesword:0>);       //conflicts with <thermalfoundation:tool.sword_bronze:0>
	recipes.remove(<techreborn:bronzeaxe:0>);         //conflicts with <thermalfoundation:tool.axe_bronze:0>
	recipes.remove(<techreborn:bronzehoe:0>);         //conflicts with <thermalfoundation:tool.hoe_bronze:0>
	recipes.remove(<techreborn:bronzehelmet:0>);      //conflicts with <thermalfoundation:armor.helmet_bronze:0>
	recipes.remove(<techreborn:bronzeboots:0>);       //conflicts with <thermalfoundation:armor.boots_bronze:0>
	recipes.remove(<techreborn:bronzepickaxe:0>);     //conflicts with <thermalfoundation:tool.pickaxe_bronze:0>
	recipes.remove(<techreborn:bronzechestplate:0>);  //conflicts with <thermalfoundation:armor.plate_bronze:0>
	recipes.remove(<techreborn:bronzeleggings:0>);    //conflicts with <thermalfoundation:armor.legs_bronze:0>
	recipes.remove(<embers:pickaxe_lead:0>);          //conflicts with <thermalfoundation:tool.pickaxe_lead:0>
	recipes.remove(<embers:pickaxe_copper:0>);        //conflicts with <thermalfoundation:tool.pickaxe_copper:0>
	recipes.remove(<embers:pickaxe_silver:0>);        //conflicts with <thermalfoundation:tool.pickaxe_silver:0>
	recipes.remove(<embers:pickaxe_aluminum:0>);      //conflicts with <thermalfoundation:tool.pickaxe_aluminum:0>
	recipes.remove(<embers:pickaxe_bronze:0>);        //conflicts with <thermalfoundation:tool.pickaxe_bronze:0>
	recipes.remove(<embers:pickaxe_electrum:0>);      //conflicts with <thermalfoundation:tool.pickaxe_electrum:0>
	recipes.remove(<embers:pickaxe_nickel:0>);        //conflicts with <thermalfoundation:tool.pickaxe_nickel:0>
	recipes.remove(<embers:pickaxe_tin:0>);           //conflicts with <thermalfoundation:tool.pickaxe_tin:0>
	recipes.remove(<embers:pickaxe_bronze:0>);        //conflicts with <techreborn:bronzepickaxe:0>	

	
//====== Forestry gears redundant ======
//------ NOTE: remove not working now becasue mezz isn't using the recipe event and CrT literally can't event
//
	recipes.remove(<forestry:gear_bronze>);
	recipes.remove(<forestry:gear_copper>);
	recipes.remove(<forestry:gear_tin>);

	
	
//====== Recipe tweaks ======
//------ Mostly just due to conflicting recipe overlap
//
	recipes.removeShaped(<rustic:crop_stake:0>);
	recipes.addShaped("cropstake", <rustic:crop_stake:0> * 3,
		[[null, null, planks],
		[null, planks, null],
		[planks, null, null]]);

	recipes.removeShaped(<waterstrainer:net>);
	recipes.addShaped("net", <waterstrainer:net> * 1,
		[[null, null, strings],
		[null, strings, null],
		[strings, null, null]]);

	recipes.removeShaped(<stevescarts:modulecomponents:43>);
	recipes.addShaped("fuse", <stevescarts:modulecomponents:43> * 12,
		[[strings, null, null],
		[null, strings, null],
		[null, null, strings]]);

	recipes.removeShaped(<quark:marble:1>);
	recipes.addShaped("marble", <quark:marble:1> * 9,
		[[marble, marble, marble],
		[marble, marble, marble],
		[marble, marble, marble]]);


//====== Dye Oredict ======
//--Ord (12-JULY-2017)
//
	var genericdye = <ore:dye> as IOreDictEntry;
	var dyeoredicts = [
		<ore:dyeBlack>,
		<ore:dyeRed>,
		<ore:dyeGreen>,
		<ore:dyeBrown>,
		<ore:dyeBlue>,
		<ore:dyePurple>,
		<ore:dyeCyan>,
		<ore:dyeLightGray>,
		<ore:dyeGray>,
		<ore:dyePink>,
		<ore:dyeLime>,
		<ore:dyeYellow>,
		<ore:dyeLightBlue>,
		<ore:dyeMagenta>,
		<ore:dyeOrange>,
		<ore:dyeWhite>
	] as IOreDictEntry[];

	for x in dyeoredicts { genericdye.addAll(x); }
	
	//Conversions
	  recipes.addShapeless("dyeconvert00", <minecraft:dye:0>  * 3, [ <ore:dyeBlack>,     <ore:dyeBlack>,     <ore:dyeBlack> ]);     //Ink Sac
	  recipes.addShapeless("dyeconvert01", <minecraft:dye:1>  * 3, [ <ore:dyeRed>,       <ore:dyeRed>,       <ore:dyeRed> ]);       //Rose Red
	  recipes.addShapeless("dyeconvert02", <minecraft:dye:2>  * 3, [ <ore:dyeGreen>,     <ore:dyeGreen>,     <ore:dyeGreen> ]);     //Cactus Green
	//recipes.addShapeless("dyeconvert03", <minecraft:dye:3>  * 3, [ <ore:dyeBrown>,     <ore:dyeBrown>,     <ore:dyeBrown> ]);     //Cocoa Beans
	//recipes.addShapeless("dyeconvert04", <minecraft:dye:4>  * 3, [ <ore:dyeBlue>,      <ore:dyeBlue>,      <ore:dyeBlue> ]);      //Lapis Lazuli
	  recipes.addShapeless("dyeconvert05", <minecraft:dye:5>  * 3, [ <ore:dyePurple>,    <ore:dyePurple>,    <ore:dyePurple> ]);    //Purple Dye
	  recipes.addShapeless("dyeconvert06", <minecraft:dye:6>  * 3, [ <ore:dyeCyan>,      <ore:dyeCyan>,      <ore:dyeCyan> ]);      //Cyan Dye
	  recipes.addShapeless("dyeconvert07", <minecraft:dye:7>  * 3, [ <ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray> ]); //Light Gray Dye
	  recipes.addShapeless("dyeconvert08", <minecraft:dye:8>  * 3, [ <ore:dyeGray>,      <ore:dyeGray>,      <ore:dyeGray> ]);      //Gray Dye
	  recipes.addShapeless("dyeconvert09", <minecraft:dye:9>  * 3, [ <ore:dyePink>,      <ore:dyePink>,      <ore:dyePink> ]);      //Pink Dye
	  recipes.addShapeless("dyeconvert10", <minecraft:dye:10> * 3, [ <ore:dyeLime>,      <ore:dyeLime>,      <ore:dyeLime> ]);      //Lime Dye
	  recipes.addShapeless("dyeconvert11", <minecraft:dye:11> * 3, [ <ore:dyeYellow>,    <ore:dyeYellow>,    <ore:dyeYellow> ]);    //Dandelion Yellow
	  recipes.addShapeless("dyeconvert12", <minecraft:dye:12> * 3, [ <ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue> ]); //Light Blue Dye
	  recipes.addShapeless("dyeconvert13", <minecraft:dye:13> * 3, [ <ore:dyeMagenta>,   <ore:dyeMagenta>,   <ore:dyeMagenta> ]);   //Magenta Dye
	  recipes.addShapeless("dyeconvert14", <minecraft:dye:14> * 3, [ <ore:dyeOrange>,    <ore:dyeOrange>,    <ore:dyeOrange> ]);    //Orange Dye
	//recipes.addShapeless("dyeconvert15", <minecraft:dye:15> * 3, [ <ore:dyeWhite>,     <ore:dyeWhite>,     <ore:dyeWhite> ]);     //Bone Meal
	
	//Because vanilla could just make 3 more "dye" items? >_>
	recipes.addShapeless("dyeconvert15bop", <biomesoplenty:white_dye> * 3, [ <ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite> ]); //BoP Dye
	recipes.addShapeless("dyeconvert04bop", <biomesoplenty:blue_dye>  * 3, [ <ore:dyeBlue>,  <ore:dyeBlue>,  <ore:dyeBlue> ]);  //BoP Dye
	recipes.addShapeless("dyeconvert03bop", <biomesoplenty:brown_dye> * 3, [ <ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown> ]); //BoP Dye


//====== Chisel / Garden Trowel ======
//--Ord (12-JULY-2017)
//
	// originally conflicted with <chisel:chisel_iron:0>
	recipes.remove(<waterstrainer:garden_trowel:0>);
	recipes.addShapedMirrored("chiseltrowel2", <waterstrainer:garden_trowel:0>,
		[[null, <minecraft:flint>, <ore:ingotTin>],
		 [null, <ore:stickWood>, <minecraft:flint>],
		 [<ore:stickWood>, null, null]]
	);
	
	// adding in "alternate" recipe for chisel as well just in case removal/conflict is still bugged
	recipes.remove(<chisel:chisel_iron:0>);
	recipes.addShapedMirrored("chiseltrowel1", <chisel:chisel_iron:0>,
		[[genericdye, <ore:ingotIron>],
		 [<ore:stickWood>, null]]
	);


//====== TechReborn Coolant/Cell Conflict ======
//--Ord (12-JULY-2017)
//
	//could be worthy of a report to mod dev as it might be an oversight
	//10k coolant cell can be crafted with the bucket of water
	//<techreborn:part:36> versus <techreborn:dynamiccell:0>
	
	recipes.removeShaped(<techreborn:part:36>, 
		[[null,	<*>,	null],
		 [<*>,	null,	<*>	],
		 [null,	<*>,	null]]
	);
	// for some reason this is removing the 10k coolant recipe that has a bucket in the center
	// could be a CrT bug, need to re-add the recipe for now:
	
		recipes.addShaped("coolantcell10k", <techreborn:part:36>, 
		[[		null,		<ore:ingotTin>,			null		],
		 [<ore:ingotTin>,	<minecraft:bucket>,	<ore:ingotTin>	],
		 [		null,		<ore:ingotTin>,			null		]]
	);


//====== Quark Iron Plate (decoration) ======
//--Ord (12-JULY-2017)
//
	recipes.remove(<quark:iron_plate:0>); 	// conflicts with <techreborn:iron_furnace:0>

	// Orig recipe was 8 iron ingots -> 24 plate (3 plates per ingot)
	// Adding bucket adds 3 ingots (or 9 "plates" worth)
	// 24+9 = 33 and that's just a dumb number so I'm rounding down to a neat half-stack of 32

	recipes.addShapedMirrored("quarkdecorfixiron", <quark:iron_plate:0>*32,
		[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
		 [<ore:ingotIron>, <minecraft:bucket>, <ore:ingotIron>],
		 [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]
	);


//====== Rustic Lattice / Iron Gear ======
//--Ord (12-JULY-2017)
//
	recipes.remove(<rustic:iron_lattice:0>);	//conflicts with <thermalfoundation:material:24> (iron gear)
	
	// A single iron ingot is "worth" 1.875 iron bars
	// A single iron bars is .375 of an iron ingot
	// Orig reustic recipe: 5 ingots = 16 lattice (or 3.2 lattice per ingot)
	// 5 iron bars = 1.875 iron ingots
	// 3.2 lattice per ingot times 1.875 = exactly 6 lattice per 5 iron bars
	
	recipes.addShapedMirrored("fixrusticlattice", <rustic:iron_lattice:0> * 6,
		[[		null,			 <minecraft:iron_bars>, 		null		 ],
		 [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
		 [		null,			 <minecraft:iron_bars>, 		null		 ]]
	);


//====== Charcoal / Graphite ======
// - Conflicts with tiny charcoal
//--Ord (12-JULY-2017)
//
	recipes.remove(<charset:graphite>);
	recipes.addShapeless("graphitecharcoal", <charset:graphite>*1,
		[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>]
		);
		
	recipes.remove(<actuallyadditions:block_misc:5>);	// conflicts with <chisel:block_charcoal2:1>


//====== CC cable / Futura ======
//--Ord (12-JULY-2017)
//
	recipes.remove(<computercraft:cable:1>); //conflicting default recipe with chisel futura
	recipes.addShapedMirrored("cccablefix", <computercraft:cable:1>,
		[[<computercraft:cable:0>, 		null,			<computercraft:cable:0>],
		 [<computercraft:cable:0>, <ore:dustRedstone>,	<computercraft:cable:0>],
		 [<computercraft:cable:0>, 		null,			<computercraft:cable:0>]]
	);


//====== Skyblocks crafting recipe ======
//--Ord (12-JULY-2017)
//
	recipes.remove(<skyblocks:skyblock>);
	recipes.addShapedMirrored("skyblockrecipe", <skyblocks:skyblock> * 4,
		[[<chisel:cloud:*>, <chisel:cloud:*>, <chisel:cloud:*>],
		 [<chisel:cloud:*>, <minecraft:daylight_detector:*>, <chisel:cloud:*>],
		 [<chisel:cloud:*>, <chisel:cloud:*>, <chisel:cloud:*>]]
	);


//====== Prosperity Shards ======
//--Ord (12-JULY-2017)
//
	recipes.addShapeless("prosperityshardcraft", <mysticalagriculture:crafting:5>,
		[<ore:dyeLightBlue>, <ore:dyeCyan>, <ore:gemPrismarine>, <mysticalagriculture:crafting:0>]
	);


//====== Uranium Seeds ======
//--Blood (17-JULY-2017)
//
	recipes.remove(<mysticalagriculture:yellorium_seeds>);

//ATC Scripts To-do:
//unify oredict for all ingots/blocks/nuggets and remove conflicting recipes

