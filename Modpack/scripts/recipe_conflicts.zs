import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ========================================================
print(" =================== Recipe Conflicts =================== ");
print(" ======================================================== ");
/*

    This script is dedicated to any items that have conflicting recipes

*/

//====== Variables ======
    var MekBoilerCasing = <mekanism:basicblock2:7>;
    var MnCSteelPlate = <magneticraft:light_plates:6>;

//====== Misc Tool/Armor Conflicts ======
//
    recipes.remove(<techreborn:bronzespade:0>);
    recipes.remove(<techreborn:bronzesword:0>);
    recipes.remove(<techreborn:bronzeaxe:0>);
    recipes.remove(<techreborn:bronzehoe:0>);
    recipes.remove(<techreborn:bronzehelmet:0>);
    recipes.remove(<techreborn:bronzeboots:0>);
    recipes.remove(<techreborn:bronzepickaxe:0>);
    recipes.remove(<techreborn:bronzechestplate:0>);
    recipes.remove(<techreborn:bronzeleggings:0>);
    recipes.remove(<thermalfoundation:tool.sword_bronze:0>);
    recipes.remove(<thermalfoundation:tool.shovel_bronze:0>);
    recipes.remove(<thermalfoundation:tool.hoe_bronze:0>);
    recipes.remove(<thermalfoundation:tool.axe_bronze:0>);
    recipes.remove(<thermalfoundation:tool.pickaxe_bronze:0>);
    recipes.remove(<thermalfoundation:armor.legs_bronze:0>);
    recipes.remove(<thermalfoundation:armor.plate_bronze:0>);
    recipes.remove(<thermalfoundation:armor.helmet_bronze:0>);
    recipes.remove(<thermalfoundation:armor.boots_bronze:0>);
    
    recipes.remove(<embers:pickaxe_lead:0>);
    recipes.remove(<embers:pickaxe_copper:0>);
    recipes.remove(<embers:pickaxe_silver:0>);
    recipes.remove(<embers:pickaxe_aluminum:0>);
    recipes.remove(<embers:pickaxe_bronze:0>);
    recipes.remove(<embers:pickaxe_electrum:0>);
    recipes.remove(<embers:pickaxe_nickel:0>);
    recipes.remove(<embers:pickaxe_tin:0>);
    recipes.remove(<embers:pickaxe_bronze:0>);
    
    recipes.remove(<actuallyadditions:item_pickaxe_emerald:0>);
    recipes.remove(<actuallyadditions:item_chest_emerald:0>);
    recipes.remove(<actuallyadditions:item_pants_emerald:0>);
    
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
    recipes.remove(<nmmlib:gear>);
    recipes.remove(<nmmlib:gear:1>);
    recipes.remove(<nmmlib:gear:2>);
    recipes.remove(<nmmlib:gear:3>);
    recipes.remove(<nmmlib:gear:4>);
    recipes.remove(<nmmlib:gear:5>);
    recipes.remove(<nmmlib:gear:6>);
    recipes.remove(<nmmlib:gear:7>);
    recipes.remove(<nmmlib:gear:8>);
    recipes.remove(<nmmlib:gear:9>);
    recipes.remove(<nmmlib:gear:10>);
    recipes.remove(<nmmlib:gear:11>);
    recipes.remove(<nmmlib:gear:12>);
    recipes.remove(<nmmlib:gear:13>); // wood gear
    recipes.remove(<nmmlib:gear:14>);
    recipes.remove(<nmmlib:gear:15>);
    recipes.remove(<nmmlib:gear:16>);
    recipes.remove(<nmmlib:gear:17>);
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


//====== CC cable / Futura ======
//--Ord (12-JULY-2017)
//
    recipes.remove(<computercraft:cable:1>); //conflicting default recipe with chisel futura
    recipes.addShapedMirrored("cccablefix", <computercraft:cable:1>,
        [[<computercraft:cable:0>,         null,            <computercraft:cable:0>],
         [<computercraft:cable:0>, <ore:dustRedstone>,    <computercraft:cable:0>],
         [<computercraft:cable:0>,         null,            <computercraft:cable:0>]]
    );
    
    
//====== Charcoal ======
//--Ord (12-JULY-2017)
//
    recipes.remove(<actuallyadditions:block_misc:5>);    // conflicts with <chisel:block_charcoal2:1>
    
    
//====== TechReborn Coolant/Cell Conflict ======
//--Ord (12-JULY-2017)
//
    //could be worthy of a report to mod dev as it might be an oversight
    //10k coolant cell can be crafted with the bucket of water
    //<techreborn:part:36> versus <techreborn:dynamiccell:0>
    
    recipes.removeShaped(<techreborn:part:36>, 
        [[null,    <*>,    null],
         [<*>,    null,    <*>    ],
         [null,    <*>,    null]]
    );
    // for some reason this is removing the 10k coolant recipe that has a bucket in the center
    // could be a CrT bug, need to re-add the recipe for now:
    
        recipes.addShaped("coolantcell10k", <techreborn:part:36>, 
        [[        null,        <ore:ingotTin>,            null        ],
         [<ore:ingotTin>,    <minecraft:bucket>,    <ore:ingotTin>    ],
         [        null,        <ore:ingotTin>,            null        ]]
    );


//====== Rustic Lattice / Iron Gear ======
//--Ord (12-JULY-2017)
//
    recipes.remove(<rustic:iron_lattice:0>);    //conflicts with <thermalfoundation:material:24> (iron gear)
    
    // A single iron ingot is "worth" 1.875 iron bars
    // A single iron bars is .375 of an iron ingot
    // Orig reustic recipe: 5 ingots = 16 lattice (or 3.2 lattice per ingot)
    // 5 iron bars = 1.875 iron ingots
    // 3.2 lattice per ingot times 1.875 = exactly 6 lattice per 5 iron bars
    
    recipes.addShapedMirrored("fixrusticlattice", <rustic:iron_lattice:0> * 6,
        [[        null,             <minecraft:iron_bars>,         null         ],
         [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
         [        null,             <minecraft:iron_bars>,         null         ]]
    );

	
//====== Wood Gear ======
//
	recipes.addShaped(<nmmlib:gear:13>, [
		[null, <ore:stickWood>, null],
		[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
		[null, <ore:stickWood>, null]
	]);
	
	

//====== Constantan Grit ======
// Thermal vs Immersive conflict
//
    recipes.remove(<thermalfoundation:material:100>);

    
//====== Wooden Rail ======
// Tconstruct vs Extra Rails conflict
//
    recipes.remove(<tconstruct:wood_rail:0>);

    
//====== Harvestcraft Cotton ======
// Extra recipe not needed, conflicts with seed recipe
//
    recipes.remove(<harvestcraft:cottonitem>);

    
// ====== Boiler Casing ======
// conflicts with Steel Gear
//    
    recipes.remove(MekBoilerCasing);
    recipes.addShaped(<mekanism:basicblock2:7> * 4, [
        [null, <ore:ingotSteel>, null], 
        [<ore:ingotSteel>, MnCSteelPlate, <ore:ingotSteel>], 
        [null, <ore:ingotSteel>, null]
    ]);


































