#modloaded bloodmagic
import mods.bloodmagic.TartaricForge as tf;
import mods.bloodmagic.BloodAltar as altar;
import mods.bloodmagic.AlchemyArray as ara;
import mods.bloodmagic.AlchemyTable as At;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

//Blood Rune in Botania

val rr=[<bloodmagic:ritual_controller>,<bloodmagic:living_armour_boots>,<bloodmagic:living_armour_helmet>,<bloodmagic:living_armour_chest>,<bloodmagic:living_armour_leggings>,<bloodmagic:path:2>] as IItemStack[];
for r in rr{recipes.remove(r);}

val st=<ore:stone>;
recipes.addShapeless("Stone Path",<bloodmagic:path:2>*4,[st,st,st,st,<bloodmagic:path:1>]);

//Sawdust
tf.addRecipe(<mekanism:sawdust>,[<psi:material>,<thaumcraft:slab_greatwood>],40,1);

//Soul gem
tf.removeRecipe([<minecraft:redstone>,<minecraft:gold_ingot>,<minecraft:glass>,<minecraft:dye:4>]);
tf.addRecipe(<bloodmagic:soul_gem>,[<minecraft:redstone>,<botania:manaresource>,<ore:blockGlass>,<minecraft:dye:4>],1,1);

//Tier 2 gem
tf.addRecipe(<bloodmagic:soul_gem:1>,[<bloodmagic:soul_gem>,<projectred-expansion:infused_ender_pearl>,<botania:storage:3>,<ore:gearMithril>],60,20);

//Tier 3 gem
tf.removeRecipe([<bloodmagic:soul_gem:1>,<minecraft:diamond>,<minecraft:gold_block>,<bloodmagic:slate:2>]);
tf.addRecipe(<bloodmagic:soul_gem:2>,[<bloodmagic:soul_gem:1>,<bloodmagic:slate:2>,<botania:storage:1>,<psi:psi_decorative:1>],250,50);
//-Blood Altar-

	//Victus Crystal
	altar.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "victus"}]}),<thaumcraft:nugget:9>,0,600,10,20);

	//Electrotine
	altar.addRecipe(<projectred-core:resource_item:105>,<extendedcrafting:trimmed:5>,2,200,20,5);
	
	//Slate
	altar.removeRecipe(<minecraft:stone>);
	altar.addRecipe(<bloodmagic:slate>,<botania:rune:2>,0,1000,5,5);

	//Weak Orb
	altar.removeRecipe(<minecraft:diamond>);
	altar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),<appliedenergistics2:material:9>,0,2000,1,2);
	//Greatwood Log
	altar.addRecipe(<thaumcraft:log_greatwood>,<forestry:logs.0:3>,1,1500,8,5);

//Pixle Dust
ara.addRecipe(<botania:manaresource:8>,<botania:manaresource:1>,<bloodmagic:component:4>);

//Element ingot
ara.addRecipe(<botania:manaresource:7>,<immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}),<thermalexpansion:augment:448>);

//Bound Sword
ara.removeRecipe(<bloodmagic:component:8>,<minecraft:diamond_sword>);
ara.addRecipe(<bloodmagic:bound_sword>,<bloodmagic:component:8>,<thaumcraft:thaumium_sword>);

//Dragonstone
recipes.addShaped("Railgun Scope",<immersiveengineering:toolupgrade:8>,[[<ore:paneGlassColorless>,<ore:ingotCopper>,null],[<ore:ingotCopper>,<thermalfoundation:material:352>,<ore:ingotCopper>],[null,<ore:ingotCopper>,<ore:paneGlassColorless>]]);
ara.addRecipe(<botania:manaresource:9>,<botania:manaresource:2>,<immersiveengineering:toolupgrade:8>);

//Crystaltine Component,Crystaltine Catalyst
recipes.remove(<extendedcrafting:material:12>);
recipes.remove(<extendedcrafting:material:18>);
ara.addRecipe(<extendedcrafting:material:18>,<extendedcrafting:material:24>,<bloodmagic:slate:1>);
recipes.addShaped(<extendedcrafting:material:12>,[[<bloodmagic:component:28>,<extendedcrafting:material:18>,<bloodmagic:component:29>],[<extendedcrafting:material:18>,null,<extendedcrafting:material:18>],[<bloodmagic:component:29>,<extendedcrafting:material:18>,<bloodmagic:component:28>]]);

//Remove Grass Block
At.removeRecipe([<minecraft:dirt>,<minecraft:dye:15>,<minecraft:wheat_seeds>]);

val dic=<ic2:dust:36>;
recipes.addShaped("Crushed Diamond",<actuallyadditions:item_dust:2>,[[dic,dic,dic],[<exnihilocreatio:item_ore_cobalt:2>,<ic2:sheet>,<exnihilocreatio:item_ore_cobalt:2>],[dic,dic,dic]]);
At.removeRecipe([<minecraft:diamond_ore>,<bloodmagic:cutting_fluid>]);
At.addRecipe(dic,[<ic2:dust:5>,<bloodmagic:cutting_fluid>],400,80,0);

recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped("Snare",<bloodmagic:soul_snare>,[[<minecraft:string>,<astralsorcery:itemcraftingcomponent>,<minecraft:string>],[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],[null,<minecraft:name_tag>,null]]);

recipes.remove(<bloodmagic:altar>);
recipes.addShaped("Blood Altar",<bloodmagic:altar>,[[st,null,st],[st,<bloodmagic:sentient_sword>.withTag({}),st],[<ore:ingotGold>,<minecraft:furnace>,<ore:ingotGold>]]);

// Tank tier 1
recipes.addShaped("Vial of Mixed Potion",<bloodmagic:alchemic_vial>,[[null,<botania:brewvial>.withTag({brewKey: "soulCross"}),<actuallyadditions:item_hairy_ball>],[<bloodmagic:component:25>,<thaumcraft:triple_meat_treat>,<minecraft:splash_potion>.withTag({Potion: "extrautils2:xu2.greek.fire"})],[<harvestcraft:bubblywateritem>,<tconstruct:edible:33>,null]]);

recipes.remove(<bloodmagic:blood_tank>);
recipes.addShaped("Blood Tank 1",<bloodmagic:blood_tank>,[[<bloodmagic:blood_rune>,<bloodmagic:alchemic_vial>,<bloodmagic:blood_rune>],[<ore:blockGlass>,null,<ore:blockGlass>],[<bloodmagic:blood_rune>,<bloodmagic:blood_rune>,<bloodmagic:blood_rune>]]);

//Tome of Peritia
recipes.replaceAllOccurences(<bloodmagic:slate:2>,<bloodmagic:slate>,<bloodmagic:experience_tome>);

//Tank tier 4
recipes.remove(<bloodmagic:blood_tank:3>);
recipes.addShaped(<bloodmagic:blood_tank:3>, [[<actuallyadditions:block_crystal:3>, <bloodmagic:blood_tank:2>, <actuallyadditions:block_crystal:3>],[<botania:specialflower>.withTag({type: "kekimurus"}), <mekanism:machineblock2:11>, <botania:specialflower>.withTag({type: "kekimurus"})], [<actuallyadditions:block_crystal:3>, <actuallyadditions:block_crystal:3>, <actuallyadditions:block_crystal:3>]]);

//Tank tier 5
recipes.remove(<bloodmagic:blood_tank:4>);
recipes.addShaped(<bloodmagic:blood_tank:4>, [[<thaumcraft:ore_quartz>, <tconstruct:slime_congealed:3>, <thaumcraft:ore_quartz>],[<astralsorcery:itemcraftingcomponent:4>, <bloodmagic:blood_tank:3>, <astralsorcery:itemcraftingcomponent:4>], [<thaumcraft:ore_quartz>, <astralsorcery:itemcraftingcomponent:2>, <thaumcraft:ore_quartz>]]);