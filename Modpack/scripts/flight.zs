import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ==============================================
print(" =================== Flight =================== ");
print(" ============================================== ");
/*

Balance / Equalization of methods of creative or near-creative flight

*/    

//====== Variables ======
//
    var NormalRing = <flyringbaublemod:flyingring>.withTag({display:{Name:"Flying Ring I",Lore:["The same ring but with", "more satisfaction woven in."]}, type: "SpecialRingNormal"});
    var FastRing = <flyringbaublemod:flyingring:1>.withTag({display:{Name:"Flying Ring II",Lore:["Automatically move faster", "than normal move speed."]}, type: "SpecialRingFast"});
    var mekJetpack = <mekanism:armoredjetpack>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}});
    var rootsTimeSpell = <roots:petal_dust>.withTag({spell: "spell_oxeye_daisy"});

recipes.addShaped(NormalRing, [
    [<actuallyadditions:item_wings_of_the_bats>, <actuallyadditions:item_misc:19>, <actuallyadditions:item_wings_of_the_bats>],
    [<flyringbaublemod:pair:*>, mekJetpack, <flyringbaublemod:pair:*>],
    [<ore:astralGemCrystals>, rootsTimeSpell, <ore:astralGemCrystals>]
    ]);

recipes.addShaped(FastRing, [
    [<ore:creativeATMStar>],
    [<flyringbaublemod:flyingring>]
    ]);
    
recipes.remove(<mekanism:jetpack>);
recipes.addShaped( <mekanism:jetpack> , [
    [<ore:stickSteel>, <ore:circuitAdvanced>, <ore:stickSteel>], 
    [<ore:plateTin>, <mekanism:gastank>.withTag({tier: 3}), <ore:plateTin>], 
    [<draconicevolution:tool_upgrade:11>, <ore:plateTin>, <draconicevolution:tool_upgrade:11>]
    ]);

recipes.remove(<draconicevolution:wyvern_chest>);
recipes.addShaped(<draconicevolution:wyvern_chest>, [
    [<ore:blockDraconium>, <draconicevolution:wyvern_core:*>, <ore:blockDraconium>], 
    [<minecraft:nether_star>, NormalRing, <minecraft:nether_star>], 
    [<ore:blockDraconium>, <draconicevolution:wyvern_energy_core:*>, <ore:blockDraconium>]]);


