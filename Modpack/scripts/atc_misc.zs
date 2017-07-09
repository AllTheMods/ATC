import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

//      ================================================
print(" =================== ATC Misc =================== ");
print(" ================================================ ");

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

	
//====== Forestry gears redundant ======
//------ NOTE: remove not working now becasue mezz isn't using the recipe event and CrT literally can't event
//
	recipes.remove(<forestry:gear_bronze>);
	recipes.remove(<forestry:gear_copper>);
	recipes.remove(<forestry:gear_tin>);

	
	
//====== Recipe tweaks
//------ Mostly just due to conflicting recipe overlap
//
	recipes.removeShaped(<rustic:crop_stake:0>);
	recipes.addShaped("cropstake", <rustic:crop_stake:0> * 3,     [[null, null, planks],
																  [null, planks, null],
																  [planks, null, null]]);


	recipes.removeShaped(<waterstrainer:net>);
	recipes.addShaped("net", <waterstrainer:net> * 1,     	[[null, null, strings],
															[null, strings, null],
															[strings, null, null]]);

	recipes.removeShaped(<stevescarts:modulecomponents:43>);
	recipes.addShaped("fuse", <stevescarts:modulecomponents:43> * 12,     	[[strings, null, null],
																			[null, strings, null],
																			[null, null, strings]]);

	recipes.removeShaped(<quark:marble:1>);
	recipes.addShaped("marble", <quark:marble:1> * 9,     	[[marble, marble, marble],
															[marble, marble, marble],
															[marble, marble, marble]]);



/*
Stuff Ord did but wasn't needed, leaving for reference

	//remake rope recipe, output less at the same time
	//made by Ordinator 2017-JUL-08
	recipes.remove(<rustic:rope>);
	recipes.addShaped("ropeRusticRecipeRemake", <rustic:rope>*8, 
		[[strings, strings, null],
		 [strings, strings, null],
		 [strings, strings, null]]);

	//remake stevecarts fuse recipe
	//made by Ordinator 2017-JUL-08
	recipes.remove(<stevescarts:modulecomponents:43>);
	recipes.addShaped("fuseSteveCartsRecipeRemake", <stevescarts:modulecomponents:43>*6, 
		[[<rustic:rope>, <rustic:rope>, null],
		 [<rustic:rope>, <rustic:rope>, null],
		 [<rustic:rope>, <rustic:rope>, null]]);

	//remake water strainer basic net
	//made by Ordinator 2017-JUL-08
	recipes.remove(<waterstrainer:net>);
	recipes.addShaped("waterStrainerNetRemake", <waterstrainer:net>*1, 
		[[<rustic:rope>, <rustic:rope>, <rustic:rope>],
		 [<rustic:rope>, cobweb, <rustic:rope>],
		 [<rustic:rope>, <rustic:rope>, <rustic:rope>]]);

	//remake water strainer DENSE net
	//made by Ordinator 2017-JUL-08
	recipes.remove(<waterstrainer:net:1>);
	recipes.addShaped("waterStrainerDENSENetRemake", <waterstrainer:net:1>*2, 
		[[<rustic:rope>, <waterstrainer:net>, <rustic:rope>],
		 [<waterstrainer:net>, <waterstrainer:net>, <waterstrainer:net>],
		 [<rustic:rope>, <waterstrainer:net>, <rustic:rope>]]);
*/


