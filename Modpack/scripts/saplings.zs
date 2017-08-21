import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ================================================
print(" =================== Saplings =================== ");
print(" ================================================ ");
/*

Custom recipes for various saplings.
Saplings added to oredict in oredict_wood.zs

*/

//====== Rainbow Oak Sapling Recipe ======
//
    recipes.addShaped("crtrainboak", <rainboaks:rainboak_sapling>, [
        [<ore:dye>, <ore:dye>, <ore:dye>],
        [<ore:dye>, <ore:treeSapling>, <ore:dye>],
        [<ore:dye>, <ore:dye>, <ore:dye>]
        ]);


//====== Recipe for Simply Tea Sapling =======
//
    recipes.addShapeless("crt_teasapling", <simplytea:tea_sapling> * 2,
        [<ore:cropTea>, <ore:cropTea>, <ore:treeSapling>, <ore:treeSapling>]
        );

    
//====== Lucky Beans Sapling Recipe ======
//
    <ore:specialBeans>.add(<cyclicmagic:sprout_seed>);
    <ore:specialBeans>.add(<harvestcraft:jellybeansitem>);
    <ore:specialBeans>.add(<randomthings:beans:1>);
    <ore:specialBeans>.add(<randomthings:beans:2>);
    recipes.addShaped("crtluckybeans", <luckybeans:bean_sapling>, [
        [<ore:specialBeans>, <ore:specialBeans>, <ore:specialBeans>],
        [<ore:specialBeans>, <ore:treeSapling>, <ore:specialBeans>],
        [<ore:specialBeans>, <ore:specialBeans>, <ore:specialBeans>]
        ]);


//====== Menril Sapling Recipe ======
//
    recipes.addShapedMirrored("menrilsaplingcustom", <integrateddynamics:menril_sapling>,
            [[<randomthings:runedust:9>, <randomthings:runedust:9>, <randomthings:runedust:9>],
             [<randomthings:runedust:9>, <ore:treeSapling>,         <randomthings:runedust:9>],
             [<randomthings:runedust:9>, <randomthings:runedust:9>, <randomthings:runedust:9>]]
        );

        
//====== Rubber Sapling Recipe ======
//
    <ore:itemRubber>.add(<industrialforegoing:plastic>);
    <ore:materialRubber>.add(<industrialforegoing:plastic>);
    <ore:itemRubber>.add(<mekanism:polyethene:0>);
    <ore:materialRubber>.add(<mekanism:polyethene:0>);
    
    recipes.addShaped("crtTRrubber", <techreborn:rubber_sapling>, [
        [<ore:materialRubber>, <ore:materialRubber>, <ore:materialRubber>],
        [<ore:materialRubber>, <ore:treeSapling>, <ore:materialRubber>],
        [<ore:materialRubber>, <ore:materialRubber>, <ore:materialRubber>]
        ]);

        