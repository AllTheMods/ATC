import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ==================================================
print(" =================== Overloaded =================== ");
print(" ================================================== ");

//====== Tweaks for the mod "Overloaded" =======
//https://github.com/CJ-MC-Mods/Overloaded/wiki




//====== Variables ======
//
val dracoCap = <draconicevolution:draconium_capacitor:1>.withTag({Energy: 256000000});
val fusionCoil = <techreborn:fusion_coil>;
val opinium = <extrautils2:opinium:8>;
val dracoReactor = <draconicevolution:reactor_core>;
val inflictGem = <embers:inflictor_gem>;
val energyCore = <overloaded:energy_core>;



//===== Balance energy core ======
//Ordinator 2017-JUL-24
//this core is needed for most really op stuff
//
	recipes.remove(energyCore);
	recipes.addShapedMirrored("overloadedenergycore", energyCore, 
		[[opinium, dracoCap, opinium],
		 [inflictGem, dracoReactor, inflictGem],
		 [fusionCoil, fusionCoil, fusionCoil]]);


//====== Infinite capacitor ======
//Ordinator 2017-JUL-24 (WIP)
//
	recipes.remove(<overloaded:infinite_capacitor>);
	<overloaded:infinite_capacitor>.addTooltip(format.red("Temporarily disabled. Recipe WIP"));