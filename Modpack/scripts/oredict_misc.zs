import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ==========================================================
print(" =================== Misc OreDictionary =================== ");
print(" ========================================================== ");
/*

Anything regarding oredict that doesn't need it's own dedicated script file

*/

//ATM Star
	<ore:creativeATMStar>.add(<atmtweaks:item_material>);

//Steel Dust
	<ore:dustSteel>.add(<magneticraft:dusts:6>);

//Astral Sorcery
	<ore:astralGemCrystals>.add(<astralsorcery:itemcraftingcomponent:4>);
	<ore:astralGemCrystals>.add(<astralsorcery:itemtunedrockcrystal>);
	<ore:astralGemCrystals>.add(<astralsorcery:itemcelestialcrystal>);
	
//====== Dye Oredict ======
//--Ord (12-JULY-2017)
//
    var genericdye = <ore:dye> as IOreDictEntry;
    var dyeoredicts = [
        <ore:dyeBlack>,
        <ore:dyeRed>,
        <ore:dyeGreen>,
        <ore:dyeBrown>,
        <ore:dyeBlue>,
        <ore:dyePurple>,
        <ore:dyeCyan>,
        <ore:dyeLightGray>,
        <ore:dyeGray>,
        <ore:dyePink>,
        <ore:dyeLime>,
        <ore:dyeYellow>,
        <ore:dyeLightBlue>,
        <ore:dyeMagenta>,
        <ore:dyeOrange>,
        <ore:dyeWhite>
    ] as IOreDictEntry[];

    for x in dyeoredicts { genericdye.addAll(x); }
    
    //Conversions
      recipes.addShapeless("dyeconvert00", <minecraft:dye:0>  * 3, [ <ore:dyeBlack>,     <ore:dyeBlack>,     <ore:dyeBlack> ]);     //Ink Sac
      recipes.addShapeless("dyeconvert01", <minecraft:dye:1>  * 3, [ <ore:dyeRed>,       <ore:dyeRed>,       <ore:dyeRed> ]);       //Rose Red
      recipes.addShapeless("dyeconvert02", <minecraft:dye:2>  * 3, [ <ore:dyeGreen>,     <ore:dyeGreen>,     <ore:dyeGreen> ]);     //Cactus Green
    //recipes.addShapeless("dyeconvert03", <minecraft:dye:3>  * 3, [ <ore:dyeBrown>,     <ore:dyeBrown>,     <ore:dyeBrown> ]);     //Cocoa Beans
    //recipes.addShapeless("dyeconvert04", <minecraft:dye:4>  * 3, [ <ore:dyeBlue>,      <ore:dyeBlue>,      <ore:dyeBlue> ]);      //Lapis Lazuli
      recipes.addShapeless("dyeconvert05", <minecraft:dye:5>  * 3, [ <ore:dyePurple>,    <ore:dyePurple>,    <ore:dyePurple> ]);    //Purple Dye
      recipes.addShapeless("dyeconvert06", <minecraft:dye:6>  * 3, [ <ore:dyeCyan>,      <ore:dyeCyan>,      <ore:dyeCyan> ]);      //Cyan Dye
      recipes.addShapeless("dyeconvert07", <minecraft:dye:7>  * 3, [ <ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray> ]); //Light Gray Dye
      recipes.addShapeless("dyeconvert08", <minecraft:dye:8>  * 3, [ <ore:dyeGray>,      <ore:dyeGray>,      <ore:dyeGray> ]);      //Gray Dye
      recipes.addShapeless("dyeconvert09", <minecraft:dye:9>  * 3, [ <ore:dyePink>,      <ore:dyePink>,      <ore:dyePink> ]);      //Pink Dye
      recipes.addShapeless("dyeconvert10", <minecraft:dye:10> * 3, [ <ore:dyeLime>,      <ore:dyeLime>,      <ore:dyeLime> ]);      //Lime Dye
      recipes.addShapeless("dyeconvert11", <minecraft:dye:11> * 3, [ <ore:dyeYellow>,    <ore:dyeYellow>,    <ore:dyeYellow> ]);    //Dandelion Yellow
      recipes.addShapeless("dyeconvert12", <minecraft:dye:12> * 3, [ <ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue> ]); //Light Blue Dye
      recipes.addShapeless("dyeconvert13", <minecraft:dye:13> * 3, [ <ore:dyeMagenta>,   <ore:dyeMagenta>,   <ore:dyeMagenta> ]);   //Magenta Dye
      recipes.addShapeless("dyeconvert14", <minecraft:dye:14> * 3, [ <ore:dyeOrange>,    <ore:dyeOrange>,    <ore:dyeOrange> ]);    //Orange Dye
    //recipes.addShapeless("dyeconvert15", <minecraft:dye:15> * 3, [ <ore:dyeWhite>,     <ore:dyeWhite>,     <ore:dyeWhite> ]);     //Bone Meal
    
    //Because vanilla could just make 3 more "dye" items? >_>
    //recipes.addShapeless("dyeconvert15bop", <biomesoplenty:white_dye> * 3, [ <ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite> ]); //BoP Dye
    //recipes.addShapeless("dyeconvert04bop", <biomesoplenty:blue_dye>  * 3, [ <ore:dyeBlue>,  <ore:dyeBlue>,  <ore:dyeBlue> ]);  //BoP Dye
    //recipes.addShapeless("dyeconvert03bop", <biomesoplenty:brown_dye> * 3, [ <ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown> ]); //BoP Dye
    recipes.addShapeless("dyeconvert15binnie", <extrabees:misc:23> * 3, [ <ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite> ]); //BoP Dye
    recipes.addShapeless("dyeconvert04binnie", <extrabees:misc:21>  * 3, [ <ore:dyeBlue>,  <ore:dyeBlue>,  <ore:dyeBlue> ]);  //BoP Dye
    recipes.addShapeless("dyeconvert03binnie", <extrabees:misc:25> * 3, [ <ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown> ]); //BoP Dye


//====== Magneticraft Plates ======
//
	<ore:plateIron>.addAll(<ore:lightPlateIron>);


//====== Forestry Circuit Boards ======
//
	<ore:circuitBasic>.add(<forestry:chipsets:0>);
	<ore:circuitBasic>.add(<forestry:chipsets:1>);
	<ore:circuitBasic>.add(<forestry:chipsets:2>);
	<ore:circuitBasic>.add(<forestry:chipsets:3>);


//====== Add Magneticraft Limestone to OreDict =======
//--Ord (13-AUG-2017)
//
	<ore:stoneLimestone>.addItems([
		<magneticraft:limestone>,
		<magneticraft:burnt_limestone>,
		<magneticraft:tile_limestone>
	]);

	<ore:stoneLimestonePolished>.addItems([
		<magneticraft:limestone>,
		<magneticraft:burnt_limestone>,
		<magneticraft:tile_limestone>
	]);
    





























