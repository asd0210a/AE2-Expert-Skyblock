#modloaded bloodmagic
import mods.bloodmagic.TartaricForge as tf;
import mods.bloodmagic.BloodAltar as altar;
import mods.bloodmagic.AlchemyArray as ara;
import mods.bloodmagic.AlchemyTable as At;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

recipes.remove(<bloodmagic:living_armour_boots>);
recipes.remove(<bloodmagic:living_armour_helmet>);
recipes.remove(<bloodmagic:living_armour_chest>);
recipes.remove(<bloodmagic:living_armour_leggings>);

//Sawdust
tf.addRecipe(<mekanism:sawdust>,[<psi:material>,<thaumcraft:slab_greatwood>],40,1);

//Soul gem
tf.removeRecipe([<minecraft:redstone>,<minecraft:gold_ingot>,<minecraft:glass>,<minecraft:dye:4>]);
tf.addRecipe(<bloodmagic:soul_gem>.withTag({}),[<minecraft:redstone>,<botania:manaresource>,<ore:blockGlass>,<minecraft:dye:4>], 1, 1);

//----------Blood Altar-------------

	//Victus Crystal
	altar.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}), <thaumcraft:nugget:9>, 0, 600,10,20);

	//Electrotine
	altar.addRecipe(<projectred-core:resource_item:105>,<extendedcrafting:trimmed:5>,2,200,20,5);
	
	//Slate
	altar.removeRecipe(<minecraft:stone>);
	altar.addRecipe(<bloodmagic:slate>, <botania:rune:2>,0,1000,5,5);

	//Greatwood Log
	altar.addRecipe(<thaumcraft:log_greatwood>,<forestry:logs.0:3>,1,1500,8,5);

//----------End-------------

//Pixle Dust
ara.addRecipe(<botania:manaresource:8>,<botania:manaresource:1>,<bloodmagic:component:4>);

//Element ingot
ara.addRecipe(<botania:manaresource:7>,<immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}),<thermalexpansion:augment:448>);

//Dragonstone
recipes.addShaped("Railgun Scope", <immersiveengineering:toolupgrade:8>, [[<ore:paneGlassColorless>, <ore:ingotCopper>, null], [<ore:ingotCopper>, <thermalfoundation:material:352>, <ore:ingotCopper>], [null, <ore:ingotCopper>, <ore:paneGlassColorless>]]);
ara.addRecipe(<botania:manaresource:9>,<botania:manaresource:2>,<immersiveengineering:toolupgrade:8>);

//Crystaltine Component, Crystaltine Catalyst
recipes.remove(<extendedcrafting:material:12>);
recipes.remove(<extendedcrafting:material:18>);
ara.addRecipe(<extendedcrafting:material:18>,<extendedcrafting:material:24>,<bloodmagic:slate:1>);
recipes.addShaped(<extendedcrafting:material:12>, [[<bloodmagic:component:28>, <extendedcrafting:material:18>, <bloodmagic:component:29>],[<extendedcrafting:material:18>, null, <extendedcrafting:material:18>], [<bloodmagic:component:29>, <extendedcrafting:material:18>, <bloodmagic:component:28>]]);

//Remove Grass Block
At.removeRecipe([<minecraft:dirt>,<minecraft:dye:15>,<minecraft:wheat_seeds>]);

val dic=<ic2:dust:36>;
recipes.addShaped("Crushed Diamond",<actuallyadditions:item_dust:2>, [[dic, dic, dic],[<exnihilocreatio:item_ore_cobalt:2>, <ic2:sheet>, <exnihilocreatio:item_ore_cobalt:2>], [dic, dic, dic]]);
At.removeRecipe([<minecraft:diamond_ore>,<bloodmagic:cutting_fluid>]);
At.addRecipe(dic,[<ic2:dust:5>,<bloodmagic:cutting_fluid>],400,80,0);

recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped("Snare",<bloodmagic:soul_snare>, [[<minecraft:string>, <astralsorcery:itemcraftingcomponent>, <minecraft:string>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [null, <minecraft:name_tag>, null]]);

recipes.remove(<bloodmagic:blood_rune>);
recipes.addShaped("Blood Rune", <bloodmagic:blood_rune>, [[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], [<astralsorcery:itemusabledust>,<bloodmagic:slate>,<astralsorcery:itemusabledust>], [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]]);

recipes.remove(<bloodmagic:altar>);
recipes.addShaped("Blood Altar",<bloodmagic:altar>, [[<ore:stone>, null, <ore:stone>], [<ore:stone>, <bloodmagic:sentient_sword>.withTag({}), <ore:stone>], [<ore:ingotGold>, <minecraft:furnace>, <ore:ingotGold>]]);

// Tank tier 1
recipes.addShaped("Vial of Mixed Potion",<bloodmagic:alchemic_vial>, [[null, <botania:brewvial>.withTag({brewKey: "soulCross"}), <actuallyadditions:item_hairy_ball>],[<bloodmagic:component:25>, <thaumcraft:triple_meat_treat>, <minecraft:splash_potion>.withTag({Potion: "extrautils2:xu2.greek.fire"})], [<harvestcraft:bubblywateritem>, <tconstruct:edible:33>, null]]);

recipes.remove(<bloodmagic:blood_tank>);
recipes.addShaped("Blood Tank 1", <bloodmagic:blood_tank>, [[<bloodmagic:blood_rune>, <bloodmagic:alchemic_vial>, <bloodmagic:blood_rune>], [<ore:blockGlass>, null, <ore:blockGlass>], [<bloodmagic:blood_rune>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]]);



