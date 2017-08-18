import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//====== Variables ======
//
    var planks = <ore:plankWood>;
    var strings = <ore:string>;
    var cobweb = <minecraft:web>;
    var marble = <ore:stoneMarble>;
	val logs = <ore:logWood>;
	val sticks = <ore:stickWood>;

    //Magneticraft Sluice
    var MnCChunkIron     = <magneticraft:chunks:0>;  //  Iron
    var MnCChunkGold     = <magneticraft:chunks:1>;  //  Gold
    var MnCChunkCopper   = <magneticraft:chunks:2>;  //  Copper
    var MnCChunkLead     = <magneticraft:chunks:3>;  //  Lead
    var MnCChunkCobalt   = <magneticraft:chunks:4>;  //  Cobalt
    var MnCChunkTungsten = <magneticraft:chunks:5>;  //  Tungsten
    var MnCChunkAluminum = <magneticraft:chunks:7>;  //  Aluminum
    var MnCChunkMithril  = <magneticraft:chunks:9>;  //  Mithril
    var MnCChunkNickel   = <magneticraft:chunks:10>; //  Nickel
    var MnCChunkOsmium   = <magneticraft:chunks:11>; //  Osmium
    var MnCChunkSilver   = <magneticraft:chunks:12>; //  Silver
    var MnCChunkTin      = <magneticraft:chunks:13>; //  Tin
    var MnCChunkZinc     = <magneticraft:chunks:14>; //  Zinc

	//Environmental Tech
	var ETAethiumCrystal = <environmentaltech:aethium_crystal>;
	
    //Magneticraft
    var MnCSteelPlate = <magneticraft:light_plates:6>;

    //Tech Reborn
    var TRCoil = <techreborn:part:14>;
    var TRCarbonPlate = <techreborn:plates:2>;
    var TRAdvAlloy = <techreborn:ingot:20>;

    //Random Things
    var RTImbueFire   = <randomthings:imbue:0>; // Fire
    var RTImbuePoison = <randomthings:imbue:1>; // Poison
    var RTImbueExp    = <randomthings:imbue:2>; // Exp
    var RTImbueWither = <randomthings:imbue:3>; // Wither

    //Astral Sorcery
    var ASPrismLens = <astralsorcery:blockprism>;
    var ASInfusedGlass = <astralsorcery:iteminfusedglass>;
    var ASGemResonate = <ore:astralGemCrystals>;

    //Evilcraft
    var ECVengeance = <evilcraft:piercing_vengeance_focus>;
    var ECBloodInfusion = <evilcraft:blood_infusion_core>;
    var ECDarkPowerGem = <evilcraft:dark_power_gem>;
    
    //Integrated Dynamics
    var IDCable = <integrateddynamics:cable>;
    var IDReader = <integrateddynamics:part_inventory_reader_item>;

    //Mex 4x ore processing
    var MekCrystalIron = <mekanism:crystal:0>;   //Iron
    var MekCrystalGold = <mekanism:crystal:1>;   //Gold
    var MekCrystalOsmium = <mekanism:crystal:2>; //Osmium
    var MekCrystalCopper = <mekanism:crystal:3>; //Copper
    var MekCrystalTin  = <mekanism:crystal:4>;   //Tin
    var MekCrystalSilver = <mekanism:crystal:5>; //Silver
    var MekCrystalLead = <mekanism:crystal:6>;   //Lead

    //Mek
    var MekPressureDisperser = <mekanism:basicblock2:6>;
    var MekAtomicAlloy = <mekanism:atomicalloy>;
    var MekUltControl = <mekanism:controlcircuit:3>;
    var MekCompressedCarbon = <mekanism:compressedcarbon>;
	
	//Roots 
	var rootsTimeSpell = <roots:petal_dust>.withTag({spell: "spell_oxeye_daisy"});

    //Immersive
    var ImmersiveAsphalt = <immersivepetroleum:stone_decoration>; //Asphalt
    var ImmersiveElectrode = <immersiveengineering:graphite_electrode>; // Electrode
    var ImmersiveSteelRod = <immersiveengineering:material:2>;
	var TreatedStick = <immersiveengineering:material:0>;
	var AluminumRod = <immersiveengineering:material:3>;
    
    //PSI
    var PsiCore = <psi:cad_core:4>;    //Radiative Core
    var PsiEbony = <psi:psi_decorative:7>; //EbonyBlock
    var PsiIvory = <psi:psi_decorative:8>; //IvoryBlock
	
	//Actually Additions
	var AAWoodCasing = <actuallyadditions:block_misc:4>;
	var AAIronCasing = <actuallyadditions:block_misc:9>;
	var AABlackQuartz = <actuallyadditions:item_misc:5>;	
	val AADoubleBatt = <actuallyadditions:item_battery_double>.withTag({Energy: 350000});

    //Misc Storage
    var SimpleStorageController = <storagenetwork:master>;
    var XNetController = <xnet:controller>;
    var RSController = <refinedstorage:controller>;

    //Bees
    var BeesPlatComb = <extrabees:honey_comb:45>;
    var BeesDiamondComb = <extrabees:honey_comb:56>;
    
    //Fluids
    var lSludge = <liquid:sludge>.withAmount(144);
    var lOliveOil = <liquid:oliveoil>.withAmount(144);
    var lDawnstone = <liquid:dawnstone>.withAmount(144);
    var lCyanite = <liquid:cyanite>.withAmount(144);
    var lMenril = <liquid:menrilresin>.withAmount(144);



//====== Removing Chunkloaders ======
//--Ord (13-AUG-2017)
//
    recipes.remove(<techreborn:chunk_loader>);
    recipes.remove(<stevescarts:cartmodule:49>);




//====== Draconic Evo ======
// Ord
//	
    recipes.remove(<draconicevolution:draconic_core>);
    recipes.addShaped(<draconicevolution:draconic_core>, [
        [<draconicevolution:draconium_ingot>, <magneticraft:chunks:1>, <draconicevolution:draconium_ingot>], 
        [<magneticraft:chunks:1>, <ore:astralGemCrystals>, <magneticraft:chunks:1>], 
        [<draconicevolution:draconium_ingot>, <magneticraft:chunks:1>, <draconicevolution:draconium_ingot>]
        ]);
    


   
    
//====== Skyblocks crafting recipe ======
//--Ord (12-JULY-2017)
//
    recipes.remove(<skyblocks:skyblock>);
    recipes.addShapedMirrored("skyblockrecipe", <skyblocks:skyblock> * 8,
        [[<chisel:cloud:*>, <chisel:cloud:*>, <chisel:cloud:*>],
         [<chisel:cloud:*>, <minecraft:daylight_detector:*>, <chisel:cloud:*>],
         [<chisel:cloud:*>, <chisel:cloud:*>, <chisel:cloud:*>]]
    );

   

		
	
//====== Blaze Rod Burn Times ======
//--Ord (21-JULY-2017)
//
    //Buff blaze rods to 16 "items" smelt time (up from 12)
    furnace.setFuel(<minecraft:blaze_rod>, 3200);

    //Add burn time for blaze lantern - 64 items
    furnace.setFuel(<quark:blaze_lantern>, 12800);



//No easy steel rod recipe
    recipes.removeShaped(ImmersiveSteelRod);


	
//====== Actually Additions Tweaks
// Ord
//
	//Wood casing
	recipes.remove(AAWoodCasing);
	recipes.addShapedMirrored("crtwoodcasing", AAWoodCasing, [
		[logs, sticks, logs],
		[sticks, AABlackQuartz, sticks],
		[logs, sticks, logs]
		]);
	
	//Iron casing
	recipes.remove(AAIronCasing);
	recipes.addShapedMirrored("crtironcasing", AAIronCasing, [
		[<ore:ingotIron>, <ore:stickAluminum>, <ore:ingotIron>],
		[<ore:stickAluminum>, AAWoodCasing, <ore:stickAluminum>],
		[<ore:ingotIron>, <ore:stickAluminum>, <ore:ingotIron>]
		]);
	
	//Advanced Coil
	recipes.remove(<actuallyadditions:item_misc:8>);
	recipes.addShaped("crtadvcoil", <actuallyadditions:item_misc:8>, [
		[<minecraft:gold_nugget>, <minecraft:gold_nugget>, <ore:wireElectrum>],
		[<minecraft:gold_nugget>, <actuallyadditions:item_misc:7>, <minecraft:gold_nugget>],
		[<ore:wireElectrum>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]
		]);
	
	//Empowerer
	<ore:blockBattery>.add(<magneticraft:battery>);
	<ore:blockBattery>.add(<integrateddynamics:energy_battery>);
	<ore:blockBattery>.add(<mekanismgenerators:generator:9>);
	recipes.remove(<actuallyadditions:block_empowerer>);
	recipes.addShaped("crtempowerer", <actuallyadditions:block_empowerer>, [
		[<ore:blockGlassHardened>, <actuallyadditions:item_crystal:4>, <ore:blockGlassHardened>],
		[AADoubleBatt, <actuallyadditions:block_display_stand>, AADoubleBatt],
		[<ore:blockBattery>, <ore:circuitAdvanced>, <ore:blockBattery>]
		]);
	

//====== Spike Mod Qty Adjust ======
// Ord
//
	recipes.remove(<spikemod:wooden_spike>);
	recipes.addShaped(<spikemod:wooden_spike>, [
		[null, <minecraft:wooden_sword:*>, null], 
		[<minecraft:wooden_sword:*>, logs, <minecraft:wooden_sword:*>], 
		[logs, planks, logs]
		]);

	recipes.remove(<spikemod:stone_spike>);
	recipes.addShaped(<spikemod:stone_spike>, [
		[null, <minecraft:stone_sword:*>, null], 
		[<minecraft:stone_sword:*>, <spikemod:wooden_spike:*>, <minecraft:stone_sword:*>], 
		[<spikemod:wooden_spike:*>, <ore:bricksStone>, <spikemod:wooden_spike:*>]
		]);

	recipes.remove(<spikemod:iron_spike>);
	recipes.addShaped(<spikemod:iron_spike>, [
		[null, <minecraft:iron_sword:*>, null], 
		[<minecraft:iron_sword:*>, <spikemod:stone_spike:*>, <minecraft:iron_sword:*>], 
		[<spikemod:stone_spike:*>, <ore:blockIron>, <spikemod:stone_spike:*>]
		]);

	recipes.remove(<spikemod:golden_spike>);
	recipes.addShaped(<spikemod:golden_spike>, [
		[null, <minecraft:golden_sword:*>, null], 
		[<minecraft:golden_sword:*>, <spikemod:iron_spike:*>, <minecraft:golden_sword:*>], 
		[<spikemod:iron_spike:*>, <ore:blockGold>, <spikemod:iron_spike:*>]
		]);

	recipes.remove(<spikemod:diamond_spike>);
	recipes.addShaped(<spikemod:diamond_spike>, [
		[null, <minecraft:diamond_sword:*>, null], 
		[<minecraft:diamond_sword:*>, <spikemod:golden_spike:*>, <minecraft:diamond_sword:*>], 
		[<spikemod:golden_spike:*>, <ore:blockDiamond>, <spikemod:golden_spike:*>]
		]);

	recipes.remove(<spikemod:looting_spike>);
	recipes.addShaped(<spikemod:looting_spike>, [
		[<minecraft:enchanted_book:*>, <spikemod:diamond_spike:*>, <minecraft:enchanted_book:*>], 
		[<spikemod:diamond_spike:*>, <minecraft:nether_star:*>, <spikemod:diamond_spike:*>], 
		[<minecraft:enchanted_book:*>, <minecraft:enchanting_table:*>, <minecraft:enchanted_book:*>]
		]);



//====== No Easy Steel ======
//    
    furnace.remove(<ore:ingotSteel>);


//====== Glider Not Sided (QoL) ======
// Ord 
//
	recipes.remove(<openglider:hang_glider_basic>);
	<ore:gliderWings>.add(<openglider:hang_glider_part:0>);
	<ore:gliderWings>.add(<openglider:hang_glider_part:1>);
	recipes.addShapedMirrored("crtglidersided", <openglider:hang_glider_basic>, [
		[<ore:gliderWings>, <openglider:hang_glider_part:2>, <ore:gliderWings>]
		]);
		


//====== Mek plastic needs TR and IF ======
// This was intended to be used as a "difficult" gate to get rubber/silicone seeds
//
	recipes.remove(<mekanism:plasticblock:*>);
	recipes.addShapedMirrored("crtplasticblock", <mekanism:plasticblock:0>, [
		[<mekanism:polyethene>, <industrialforegoing:plastic>, <mekanism:polyethene>],
		[<industrialforegoing:plastic>, <techreborn:part:32>, <industrialforegoing:plastic>],
		[<mekanism:polyethene>, <industrialforegoing:plastic>, <mekanism:polyethene>]
		]);


//EOF