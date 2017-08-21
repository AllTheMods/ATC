import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ================================================================
print(" =================== Farmers / Resource Crops =================== ");
print(" ================================================================ ");
/*

Balance / Equalization of auto-farming machines and resource-crops

NOTE: The high difficulty on resource-bearing-crops is an alternative
to removing the mod altogether for being too inbalanced. Instead it is
used as a mid/late game bonus as players work towards endgame and 
creative-only recipes.

*/    

/*
//====== Variables ======
//
    var RTFertileDirt = <randomthings:fertilizeddirt>;
    var CyclicHydrate = <cyclicmagic:block_hydrator>;
    var AttainSeed = <attaineddrops2:seed>;
    var AttainEssence = <attaineddrops2:essence>;
    var TFFert = <thermalfoundation:fertilizer:2>;
    var IFFert = <industrialforegoing:fertilizer>;
    var AAFert = <actuallyadditions:item_fertilizer>;
    var NotchApple = <minecraft:golden_apple:1>;
    var RoyalJelly = <forestry:royal_jelly>;
    var GrowEssence = <minecraft:spawn_egg>.withTag({display:{Name:"Growth Essence",Lore:["This item represents the", "essence of growth."]}});
    var Cloche = <immersiveengineering:metal_device1:13>;
    <ore:growGlass>.add(<actuallyadditions:block_greenhouse_glass>);
    <ore:growGlass>.add(<astralsorcery:itemcoloredlens:2>);

    
//====== Custom "growth essence" ======
//
    mods.actuallyadditions.Empowerer.addRecipe(GrowEssence, 
        RoyalJelly, 
        AAFert, IFFert, TFFert, AttainEssence, 
        100000, 1200, [0.0, 0.6, 0.1]);


//====== Attained Drops Tuning ======
//

    recipes.remove(AttainSeed);
    recipes.addShaped("crtattainedseed", AttainSeed, [
        [<ore:seed>, <ore:seed>, <ore:seed>],
        [<ore:seed>, GrowEssence, <ore:seed>],
        [<ore:seed>, <ore:seed>, <ore:seed>]
    ]);

    recipes.remove(<attaineddrops2:creator:0>);
    recipes.addShaped("crtsoilenricher", <attaineddrops2:creator:0>, [
        [null, AttainSeed, null],
        [RTFertileDirt, GrowEssence, RTFertileDirt],
        [null, CyclicHydrate, null]
    ]);


//====== Nerf Cloche ======
//    
    recipes.remove(Cloche);
    recipes.addShaped("crtcloche", Cloche, [
        [<ore:growGlass>, <immersiveengineering:material:27>, <ore:growGlass>], 
        [<ore:blockGlassHardened>, GrowEssence, <ore:blockGlassHardened>], 
        [<immersiveengineering:treated_wood>, <immersiveengineering:toolupgrade:6>, <immersiveengineering:treated_wood>]
    ]);

    
//====== Growable Cells ======
//
    recipes.remove(<growablecells:seedr1k>);
    recipes.addShapedMirrored(<growablecells:seedr1k>, [
        [<refinedstorage:storage_disk:1>, <refinedstorage:storage_disk:1>, <refinedstorage:storage_disk:1>],
        [<refinedstorage:storage_disk:1>, <ore:creativeATMStar>, <refinedstorage:storage_disk:1>],
        [<refinedstorage:storage_disk:1>, <refinedstorage:storage_disk:1>, <refinedstorage:storage_disk:1>]
        ]);

*/
    