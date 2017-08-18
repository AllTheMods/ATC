import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      =======================================================
print(" =================== Quarry / Miners =================== ");
print(" ======================================================= ");
/*

Balance / Equalization of various auto-miners and quarries

*/

//====== Variables ======
//
    var AAMiner = <actuallyadditions:block_miner>;
    var MekMiner = <mekanism:machineblock:4>;
    
    //var RFTQuarry = <rftools:shape_card:2>;
    //var RFTBuilder = <rftools:builder>;
    
    <ore:basicPump>.add(<rangedpumps:pump>);
    <ore:basicPump>.add(<mekanism:machineblock:12>);
    <ore:basicPump>.add(<immersiveengineering:metal_device0:5>);

    

//====== Mek Digital Miner ======
//
    recipes.remove(MekMiner);
    recipes.addShaped(MekMiner, [
        [<mekanism:atomicalloy>, <ore:circuitAdvanced>, <mekanism:atomicalloy>], 
        [<mekanism:machineblock:15>, <mekanism:robit>, <mekanism:machineblock:15>], 
        [<mekanism:teleportationcore>, AAMiner, <mekanism:teleportationcore>]]);
    
    
    //RFT builder
        recipes.remove(<rftools:builder>);
        recipes.addShaped(<rftools:builder>, [
            [<minecraft:brick_block>, <minecraft:ender_pearl>, <minecraft:brick_block>], 
            [<ore:basicPump>, <rftools:machine_frame>, <cyclicmagic:builder_block>], 
            [<minecraft:brick_block>, AAMiner, <minecraft:brick_block>]
            ]);
    
    
    //RFTmachine block tweak
    recipes.remove(<rftools:machine_frame>);
    recipes.addShapedMirrored(<rftools:machine_frame>, [
        [<ore:plateIron>, <forestry:thermionic_tubes>, <ore:plateIron>],
        [<ore:dustGold>, <ore:circuitBasic>, <ore:dustGold>],
        [<ore:plateIron>, <forestry:thermionic_tubes>, <ore:plateIron>]
        ]);
        

        
        
        
