import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ========================================================
print(" =================== Extreme Reactors =================== ");
print(" ======================================================== ");
/*

ER Tweaks w/ contributions from Shadows

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
    var TRAdvAlloy = <techreborn:plates:35>;
    var ImmersiveElectrode = <immersiveengineering:graphite_electrode>; // Electrode
    var ImmersiveSteelRod = <immersiveengineering:material:2>;
    var RTImbueFire   = <randomthings:imbue:0>; // Fire
    var MekCrystalSilver = <mekanism:crystal:5>; //Silver
    var lCyanite = <liquid:cyanite>.withAmount(144);
    var lMenril = <liquid:menrilresin>.withAmount(144);
    var TRCarbonPlate = <techreborn:plates:2>;
    var MekUltControl = <mekanism:controlcircuit:3>;
    var SteelGlass = <thermalfoundation:glass_alloy>;
    

//Reactor And Turbine Housing CORE
    recipes.remove(<bigreactors:reactorcasingcores>);
    recipes.remove(<bigreactors:turbinehousingcores>);

        
//Reactor and Turbine HOUSING
    recipes.remove(<bigreactors:reactorcasing>);
    recipes.remove(<bigreactors:turbinehousing>);

    recipes.addShaped(<bigreactors:reactorcasing> * 12, [
        [<ore:plateCarbon>, <ore:blockSteel>, <ore:plateCarbon>], 
        [<ore:plateTungsten>, TRAdvAlloy, <ore:plateTungsten>], 
        [<ore:plateCarbon>, <ore:blockSteel>, <ore:plateCarbon>]
        ]);
    recipes.addShaped(<bigreactors:turbinehousing> * 12, [
        [<ore:plateCarbon>, <ore:blockInvar>, <ore:plateCarbon>], 
        [<ore:plateTungsten>, <ore:plateEnderium>, <ore:plateTungsten>], 
        [<ore:plateCarbon>, <ore:blockInvar>, <ore:plateCarbon>]
        ]);


//Fuel Rods
    recipes.remove(<bigreactors:reactorfuelrod>);
    recipes.addShaped(<bigreactors:reactorfuelrod> * 3, [
        [ImmersiveSteelRod, SteelGlass, ImmersiveSteelRod], 
        [<ore:plateTungsten>, SteelGlass, <ore:plateTungsten>], 
        [ImmersiveSteelRod, SteelGlass, ImmersiveSteelRod]
        ]);

        
//Reactor Controller
    recipes.remove(<bigreactors:reactorcontroller>);
    recipes.addShaped(<bigreactors:reactorcontroller>, [
        [<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
        [<bigreactors:reactorcasing>, <techreborn:fusion_control_computer>, <bigreactors:reactorcasing>], 
        [<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
        ]);


//RF Power Tap : Apparently this recipe is missing from the game, but i'm not seeing it being removed anywhere.
    /*
    recipes.addShaped(<bigreactors:reactorpowertaprf>, [
        [<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
        [<bigreactors:reactorcasing>, <rftools:powercell>, <bigreactors:reactorcasing>], 
        [<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
        ]);
    */
    
    
//Ludicrite
    recipes.remove(BRLudicrite);
    recipes.addShaped("crtludicrite", BRLudicrite, [
        [BRBlutonium, MekCrystalSilver, <bigreactors:ingotmetals:3>], 
        [<thermalfoundation:storage_alloy:7>, RTImbueFire, <thermalfoundation:storage_alloy:7>], 
        [BRBlutonium, MekCrystalSilver, BRBlutonium]
        ]);

        
//Graphite
    recipes.remove(BRGraphite);

    
//Blutonium Processing
    recipes.removeShaped(BRBlutonium);
    recipes.addShapeless("crtBRblufix", BRBlutonium * 9, [<bigreactors:blockmetals:3>]);
    mods.thermalexpansion.Crucible.addRecipe(lCyanite, BRCyanDust, 200000);
    mods.thermalexpansion.Refinery.addRecipe(lMenril, BRBlueDust, lCyanite, 200000);

    BRBlueDust.addTooltip("Extracted from fluid cyanite");
    
    
   
