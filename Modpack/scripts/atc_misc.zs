import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

//      ================================================
print(" =================== ATC Misc =================== ");
print(" ================================================ ");

//https://github.com/AllTheMods/ATC/blob/master/Modpack/scripts/atc_misc.zs

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


//====== Chisel / Garden Trowel ======
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
	recipes.addShapedMirrored("chiseltrowel1", <waterstrainer:garden_trowel:0>,
		[[genericdye, <ore:ingotIron>],
		 [<ore:stickWood>, null]]
	);


//ATC Scripts To-do:

	//recipes.remove(<rustic:iron_lattice:0>);			//conflicts with <thermalfoundation:material:24>

	//<techreborn:iron_furnace:0>	<quark:iron_plate:0> -- conflict?

	//<techreborn:part:36>	<techreborn:dynamiccell:0> -- conflict?

	//<actuallyadditions:block_misc:5>	<chisel:block_charcoal2:1> -- conflict?

	//<computercraft:cable:1>	<chisel:futura:0> -- conflict?

	//unify oredict for all ingots/blocks/nuggets and remove conflicting recipes

