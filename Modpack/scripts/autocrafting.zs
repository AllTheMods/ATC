import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ====================================================
print(" =================== Autocrafting =================== ");
print(" ==================================================== ");
/*

Balance / Equalization of various auto-crafting mechanics

*/    

//====== Variables ======
//
    <ore:basicCrafter>.add(<cyclicmagic:auto_crafter>);
    <ore:basicCrafter>.add(<structuredcrafting:structured_crafter>);
        
        
//====== RFTools Crafter ======
//
        recipes.remove(<rftools:crafter1>);
        recipes.addShaped(<rftools:crafter1>, [
            [null, <ore:circuitBasic>, null],
            [<ore:basicCrafter>, <rftools:machine_frame>, <ore:basicCrafter>],
            [null, <ore:circuitBasic>, null]
            ]);
            
    
//====== Forestry Worktable ======
//
        recipes.remove(<forestry:worktable>);
        recipes.addShaped(<forestry:worktable>, [
            [<ore:basicCrafter>],
            [<ore:crafterWood>],
            [<ore:chestWood>]
            ]);
    
    
//====== RefinedStorage Crafter ======
//
    recipes.remove(<refinedstorage:crafter>);
    recipes.addShaped(<refinedstorage:crafter>, [
        [<refinedstorage:quartz_enriched_iron>, <refinedstorage:core>, <refinedstorage:quartz_enriched_iron>], 
        [<refinedstorage:processor:5>, <refinedstorage:machine_casing>, <refinedstorage:processor:5>], 
        [<refinedstorage:quartz_enriched_iron>, <ore:basicCrafter>, <refinedstorage:quartz_enriched_iron>]
        ]);
   