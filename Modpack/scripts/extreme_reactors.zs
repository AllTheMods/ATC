import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ========================================================
print(" =================== Extreme Reactors =================== ");
print(" ======================================================== ");
/*

Instead of being removed from the pack entirely due, Extreme Reactors 
has been converted into a means to gate extremely difficult endgame
recipes and "creative only" item requirements

*/    

//====== Variables ======
//
    var BRAngelsite = <bigreactors:minerals:0>;
    var BRBentonite = <bigreactors:minerals:1>;
    var BRGraphite = <bigreactors:ingotmetals:2>;
    var BRLudicrite = <bigreactors:blockmetals:4>;
    var BRCyanDust = <bigreactors:dustmetals:1>;
    var BRBlueDust = <bigreactors:dustmetals:3>;
    var BRBlutonium = <bigreactors:ingotmetals:3>;
    var TRAdvAlloy = <techreborn:ingot:20>;
    var ImmersiveElectrode = <immersiveengineering:graphite_electrode>; // Electrode
    var ImmersiveSteelRod = <immersiveengineering:material:2>;
    var RTImbueFire   = <randomthings:imbue:0>; // Fire
    var MekCrystalSilver = <mekanism:crystal:5>; //Silver
    var lCyanite = <liquid:cyanite>.withAmount(144);
    var lMenril = <liquid:menrilresin>.withAmount(144);
    var TRCarbonPlate = <techreborn:plates:2>;
    var IDReader = <integrateddynamics:part_inventory_reader_item>;
    var MekUltControl = <mekanism:controlcircuit:3>;
    var ECBloodInfusion = <evilcraft:blood_infusion_core>;
    var PsiCore = <psi:cad_core:4>;    //Radiative Core
    

//Reactor And Turbine Housing CORE
    recipes.remove(<bigreactors:reactorcasingcores>);
    recipes.remove(<bigreactors:turbinehousingcores>);

    recipes.addShaped(<bigreactors:reactorcasingcores>, [
        [<minecraft:iron_ingot>, <bigreactors:ingotmetals:2>, <minecraft:iron_ingot>], 
        [BRBentonite, PsiCore, BRBentonite], 
        [<minecraft:iron_ingot>, <bigreactors:ingotmetals:2>, <minecraft:iron_ingot>]
        ]);
    recipes.addShaped(<bigreactors:turbinehousingcores>, [
        [<minecraft:iron_ingot>, <bigreactors:ingotmetals:2>, <minecraft:iron_ingot>], 
        [BRAngelsite, PsiCore, BRAngelsite], 
        [<minecraft:iron_ingot>, <bigreactors:ingotmetals:2>, <minecraft:iron_ingot>]
        ]);

        
//Reactor and Turbine HOUSING
    recipes.remove(<bigreactors:reactorcasing>);
    recipes.remove(<bigreactors:turbinehousing>);

    recipes.addShaped(<bigreactors:reactorcasing> * 4, [
        [TRAdvAlloy, <bigreactors:ingotmetals:2>, TRAdvAlloy], 
        [BRGraphite, <bigreactors:reactorcasingcores>, BRGraphite], 
        [TRAdvAlloy, <bigreactors:ingotmetals:2>, TRAdvAlloy]
        ]);
    recipes.addShaped(<bigreactors:turbinehousing> * 4, [
        [TRAdvAlloy, <bigreactors:ingotmetals:2>, TRAdvAlloy], 
        [BRGraphite, <bigreactors:turbinehousingcores>, BRGraphite], 
        [TRAdvAlloy, <bigreactors:ingotmetals:2>, TRAdvAlloy]
        ]);


//Fuel Rods
    recipes.remove(<bigreactors:reactorfuelrod>);
    recipes.addShaped(<bigreactors:reactorfuelrod>, [
        [ImmersiveSteelRod, ImmersiveSteelRod, ImmersiveSteelRod], 
        [<immersiveengineering:metal:35>, ImmersiveElectrode, <immersiveengineering:metal:35>], 
        [ImmersiveElectrode, <minecraft:end_rod>, ImmersiveElectrode]
        ]);

        
//Reactor Controller
    recipes.remove(<bigreactors:reactorcontroller>);
    recipes.addShaped(<bigreactors:reactorcontroller>, [
        [<bigreactors:reactorcasing>, ECBloodInfusion, <bigreactors:reactorcasing>], 
        [<ore:ingotUranium>, IDReader, <ore:ingotUranium>], 
        [<bigreactors:reactorcasing>, MekUltControl, <bigreactors:reactorcasing>]
        ]);
    
    
//Ludicrite
    recipes.remove(BRLudicrite);
    recipes.addShaped("crtludicrite", BRLudicrite, [
        [BRBlutonium, MekCrystalSilver, <bigreactors:ingotmetals:3>], 
        [<thermalfoundation:storage_alloy:7>, RTImbueFire, <thermalfoundation:storage_alloy:7>], 
        [BRBlutonium, MekCrystalSilver, BRBlutonium]
        ]);

        
//Graphite
    recipes.remove(BRGraphite);
    recipes.addShaped("crtgraphite", BRGraphite, [[TRCarbonPlate, TRCarbonPlate]]);

    
//Blutonium Processing
    recipes.removeShaped(BRBlutonium);
    recipes.addShapeless("crtBRblufix", BRBlutonium * 9, [<bigreactors:blockmetals:3>]);
    mods.thermalexpansion.Crucible.addRecipe(lCyanite, BRCyanDust, 200000);
    mods.thermalexpansion.Refinery.addRecipe(lMenril, BRBlueDust, lCyanite, 200000);

    BRBlueDust.addTooltip("Extracted from fluid cyanite");
    
    
   
