#modloaded botania
import mods.botania.ManaInfusion as pool;
import mods.botania.Apothecary as apo;
import mods.botania.PureDaisy as daisy;
import mods.botania.RuneAltar as rune;
import mods.botania.ElvenTrade as trade;

import crafttweaker.recipes.ICraftingRecipe;

recipes.remove(<minecraft:end_portal_frame>);
recipes.remove(<botania:alfheimportal>);
recipes.remove(<botania:corporeaindex>);
recipes.remove(<botania:corporeaspark:1>);
recipes.remove(<botania:corporeaspark>);
val peb=<botania:manaresource:21>;
recipes.removeShapeless(<minecraft:cobblestone>,[peb,peb,peb,peb]);

recipes.addShapeless("Elven Botania",<botania:lexicon>.withTag({"knowledge.alfheim": 1 as byte,forcedMessage: ""}),[<botania:lexicon>,<botania:manaresource>]);

val livR=<ore:livingrock>;
val livW=<ore:livingwood>;

recipes.remove(<botania:runealtar>);
recipes.addShaped("Runic Altar",<botania:runealtar>,[[null,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),null],[livR,livR,livR],[livR,<ore:manaPearl> | <ore:manaDiamond>,livR]]);

recipes.remove(<bloodmagic:blood_rune>);
recipes.addShaped("Blood Rune",<bloodmagic:blood_rune>,[[livR,livR,livR],[<astralsorcery:itemusabledust>,<bloodmagic:slate>,<astralsorcery:itemusabledust>],[livR,livR,livR]]);


recipes.remove(<botania:grasshorn>);
recipes.addShaped("Horn of the Wild",<botania:grasshorn>,[[null,livW,null],[livW,<botania:cacophonium>,livW],[livW,livW,null]]);

recipes.remove(<botania:fertilizer>);
recipes.addShapeless("Floral Fertilizer",<botania:fertilizer> * 4,
[<minecraft:dye:15>,<minecraft:dye:11>,<minecraft:dye:11>,<minecraft:dye:1>,<minecraft:dye:1>]);

recipes.addShaped("Corporea Index",<botania:corporeaindex>,[[<minecraft:potion>,<ore:obsidian>,<minecraft:potion>],[<ore:obsidian>,<botania:corporeaspark:1>,<ore:obsidian>],[<minecraft:written_book>,<ore:obsidian>,<minecraft:written_book>]]);

//Mana Dimond,End Pearl
pool.removeRecipe(<botania:manaresource:2>);
apo.addRecipe(<botania:manaresource:2>,[<botania:flower:5>,<botania:flower:8>,<botania:flower:6>,<botania:flower:3>,<projectred-core:resource_item:320>,<ore:mysticFlowerWhite>,<botania:flower:1>,<botania:flower:2>,<botania:flower:4>]);
pool.removeRecipe(<botania:manaresource:1>);
apo.addRecipe(<botania:manaresource:1>,[<ore:mysticFlowerPurple>,<botania:flower:9>,<ore:mysticFlowerBrown>,<ore:mysticFlowerGreen>,<minecraft:ender_pearl>,<botania:flower:15>,<ore:mysticFlowerBlue>,<ore:mysticFlowerGray>,<ore:mysticFlowerRed>]);

//Loonium
apo.removeRecipe(<botania:specialflower>.withTag({type: "loonium"}));

//Primal Mana
pool.addInfusion(<forge:bucketfilled>.withTag({FluidName: "mana",Amount: 1000}),<minecraft:bucket>,400000);

//Livingrock
daisy.removeRecipe(livR);
daisy.addRecipe(<harvestcraft:well>,<botania:livingrock>,40);

//Jaded Amaranthus (Buff)
pool.addInfusion(<botania:specialflower>.withTag({type: "jadedAmaranthus"}),<ore:flowerRed>,100);

//Black Iron Ingot
recipes.removeShapeless(<extendedcrafting:material>,[<minecraft:iron_ingot>,<ore:dyeBlack>]);
pool.addAlchemy(<extendedcrafting:material>,<ic2:ingot>,1600);

//Rune of Earth
rune.removeRecipe(<botania:rune:2>);
rune.addRecipe(<botania:rune:2>,[<thaumcraft:tallow>,<harvestcraft:maplesyrupwafflesitem>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "herba"}]}),<bloodmagic:component:22>,<minecraft:coal>,<botania:manaresource>],3200);

//Rune of Fire
rune.removeRecipe(<botania:rune:1>);
rune.addRecipe(<botania:rune:1>,[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "ignis"}]}),<minecraft:fire_charge>,<thaumcraft:nitor_yellow>,<minecraft:brick>,<botania:manaresource:23>],3200);

//Rune of Air
rune.removeRecipe(<botania:rune:3>);
rune.addRecipe(<botania:rune:3> * 2,[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "aer"}]}),<minecraft:heavy_weighted_pressure_plate>,<minecraft:feather>,<appliedenergistics2:paint_ball>,<botania:manaresource>],5200);

//Flux Crystal
rune.addRecipe(<thaumcraft:crystal_vitium>,[<mekanism:machineblock2:11>.withTag({tier: 0,mekData: {fluidTank: {FluidName: "astralsorcery.liquidstarlight",Amount: 14000}}}),<bloodmagic:blood_tank:1>.withTag({Fluid: {FluidName: "astralsorcery.liquidstarlight",Amount: 32000}}),<minecraft:lit_pumpkin>,<bloodmagic:sigil_void>,<botania:brewvial>.withTag({brewKey: "regen"}),<botania:forestdrum:2>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "vitium"}]})],9100);

//AA Iron Casing
var cof=<actuallyadditions:item_coffee>.withTag({"1": {Duration: 25, ID: 14, Amplifier: 1}, "2": {Duration: 130, ID: 13, Amplifier: 0}, Counter: 3, "3": {Duration: 125, ID: 10, Amplifier: 1}});
rune.addRecipe(<actuallyadditions:block_misc:9>,[<chisel:iron>,cof,<ore:ingotEnderium>,<chisel:iron>,cof,<ore:ingotEnderium>],25000);

//Terra Plate
recipes.replaceAllOccurences(<botania:storage>,<immersiveengineering:storage:8>,<botania:terraplate>);

val Ashb=<forestry:ash_brick>;
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped("Alchemy Catalyst",<botania:alchemycatalyst>,[[Ashb,<ore:ingotGold>,Ashb],[<minecraft:brewing_stand>,<extendedcrafting:material:2>,<minecraft:brewing_stand>],[Ashb,<ore:ingotGold>,Ashb]]);

//Corporea Crystal Cube
recipes.replaceAllOccurences(<botania:elfglass>,<minecraft:glass>,<botania:corporeacrystalcube>);

//Crafty Crate
recipes.replaceAllOccurences(<botania:dreamwood:1>,<ore:plankWood>,<botania:opencrate:1>);

//
val endi=<enderio:item_alloy_ingot:1>;
recipes.addShaped("Redstone Flux", <botania:rfgenerator>,[[livR,endi,livR],[endi,<immersiveengineering:metal_decoration0:3>,endi],[livR,endi,livR]]);

//Unstable unknown steel pattern
val steelCoin=<thermalfoundation:coin:96>;
steelCoin.displayName="Ultimate Unstable Unknown Steel Sample" ;
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:160>);
rune.addRecipe(steelCoin,[<rftoolsdim:empty_dimension_tab>,<enderio:item_alloy_ingot>,<enderio:item_alloy_ingot>,<bloodmagic:monster_soul:1>, <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}})],10000);
