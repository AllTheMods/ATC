import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      =========================================================
print(" =================== Acceleration Wand =================== ");
print(" ========================================================= ");

   //wand core
   recipes.remove(<notenoughwands:advanced_wandcore>);
   recipes.addShaped(<notenoughwands:advanced_wandcore>, [
	   [<actuallyadditions:item_crystal_empowered:4>, <cyclicmagic:soulstone>, <actuallyadditions:item_crystal_empowered:4>], 
	   [<randomthings:ingredient:1>, <notenoughwands:wandcore>, <randomthings:ingredient:1>], 
	   [<actuallyadditions:item_crystal_empowered:4>, <draconicevolution:draconic_core>, <actuallyadditions:item_crystal_empowered:4>]
	   ]);

	//Acceleration Wand
	var AccelWand = <notenoughwands:acceleration_wand>;
	recipes.remove(AccelWand);
	recipes.addShaped("crtaccelwandnerf", AccelWand, [
		[<techreborn:upgrades:0>, <integrateddynamics:delay>, null],
		[<integrateddynamics:delay>, <notenoughwands:advanced_wandcore>, null],
		[null, null, <notenoughwands:advanced_wandcore>]
		]);
   