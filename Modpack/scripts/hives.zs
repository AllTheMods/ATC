import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      =============================================
print(" =================== Hives =================== ");
print(" ============================================= ");
/*

Custom recipes for Forestry Hives

*/

//====== Variables ======
//
    val HiveEnder = <forestry:beehives:4> as IItemStack; // Ender Hive
    val HiveForest = <forestry:beehives> as IItemStack; // Forest Hive
    val HiveMarble = <extrabees:hive:3> as IItemStack; // Marble Hive
    val HiveMarshy = <forestry:beehives:6> as IItemStack; // Marshy Hive
    val HiveMeadows = <forestry:beehives:1> as IItemStack; // Meadows Hive
    val HiveModest = <forestry:beehives:2> as IItemStack; // Modest Hive
    val HiveNether = <extrabees:hive:2> as IItemStack; // Nether Hive
    val HiveRock = <extrabees:hive:1> as IItemStack; // Rock Hive
    val HiveTropical = <forestry:beehives:3> as IItemStack; // Tropical Hive
    val HiveWater = <extrabees:hive:0> as IItemStack; // Water Hive 
    val HiveWintry = <forestry:beehives:5> as IItemStack; // Wintry Hive
    

//====== Hive Oredict ======
//
    var HivesToAdd = [
        HiveEnder,
        HiveForest,
        HiveMarble,
        HiveMarshy,
        HiveMeadows,
        HiveModest,
        HiveNether,
        HiveRock,
        HiveTropical,
        HiveWater,
        HiveWintry
    ] as IItemStack[];
    
    <ore:beehiveForestry>.addItems(HivesToAdd);


//====== Register Recipes using Function ======
//
    hiveRecipe(HiveEnder,    <minecraft:ender_pearl>,  <minecraft:obsidian>);
    hiveRecipe(HiveForest,   <ore:treeSapling>,        <minecraft:planks:1>);
    hiveRecipe(HiveMarble,   <ore:stoneGranite>,       <ore:stoneMarble>);
    hiveRecipe(HiveMarshy,   <ore:mushroomAny>,        <ore:blockSlime>);
    hiveRecipe(HiveMeadows,  <minecraft:red_flower:*>, <minecraft:grass:0>);
    hiveRecipe(HiveModest,   <minecraft:cactus>,       <minecraft:sandstone:*>);
    hiveRecipe(HiveNether,   <ore:gemQuartz>,          <minecraft:red_nether_brick:0>);
    hiveRecipe(HiveRock,     <ore:stoneDiorite>,       <minecraft:stone:0>);
    hiveRecipe(HiveTropical, <minecraft:vine>,         <minecraft:log:3>);
    hiveRecipe(HiveWater,    <minecraft:dye:0>,        <minecraft:clay:0>);
    hiveRecipe(HiveWintry,   <minecraft:snowball>,     <minecraft:packed_ice:0>);


//====== Function to make hives ======
//
    function hiveRecipe(hive as IItemStack, special as IIngredient, casing as IIngredient){
        /*
            Hive recipe format
                SCS
                CNC
                SCS
            S = "special"
            C = "casing"
            N = "net"
        */
		val DenseNet = <waterstrainer:net:1>;
		
        recipes.addShaped(hive, [
            [special, casing, special],
            [casing, DenseNet, casing],
            [special, casing, special]
            ]);
        }


