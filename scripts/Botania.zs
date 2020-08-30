#modloaded botania
import mods.botania.ManaInfusion as pool;
import mods.botania.Apothecary as apo;
import mods.botania.PureDaisy as daisy;
import mods.botania.RuneAltar as rune;
import mods.botania.Orechid;
import crafttweaker.recipes.ICraftingRecipe;

recipes.addShapeless("Elven Botania",<botania:lexicon>.withTag({"knowledge.alfheim": 1 as byte, forcedMessage: ""}),[<botania:lexicon>,<botania:manaresource:18>,<botania:manaresource:18>]);

recipes.remove(<botania:alfheimportal>);
recipes.remove(<botania:runealtar>);
recipes.addShaped("Runic Altar", <botania:runealtar>, [[null,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),null],[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], [<ore:livingrock>, <ore:manaPearl> | <ore:manaDiamond>, <ore:livingrock>]]);

recipes.remove(<botania:grasshorn>);
recipes.addShaped("Horn of the Wild", <botania:grasshorn>, [[null, <ore:livingwood>, null], [<ore:livingwood>, <botania:cacophonium>, <ore:livingwood>], [<ore:livingwood>, <ore:livingwood>, null]]);

recipes.remove(<botania:fertilizer>);
recipes.addShapeless("Floral Fertilizer",<botania:fertilizer> * 4, 
[<minecraft:dye:15>, <minecraft:dye:11>, <minecraft:dye:11>, <minecraft:dye:1>, <minecraft:dye:1>]);
recipes.remove(<botania:corporeainterceptor>);
recipes.replaceAllOccurences(<ore:blockRedstone>,<minecraft:redstone>,<botania:corporeainterceptor>);

recipes.remove(<botania:corporeaindex>);
recipes.remove(<botania:corporeaspark:1>);
recipes.remove(<botania:corporeaspark>);
recipes.addShaped("Corporea Index",<botania:corporeaindex>, [[<minecraft:potion>, <ore:obsidian>, <minecraft:potion>],[<ore:obsidian>, <botania:corporeaspark:1>, <ore:obsidian>], [<minecraft:written_book>, <ore:obsidian>, <minecraft:written_book>]]);

//Mana Dimond,End Pearl
pool.removeRecipe(<botania:manaresource:2>);
apo.addRecipe(<botania:manaresource:2>, [<botania:flower:5>, <botania:flower:8>, <botania:flower:6>, <botania:flower:3>, <projectred-core:resource_item:320>, <ore:mysticFlowerWhite>, <botania:flower:1>, <botania:flower:2>, <botania:flower:4>]);
pool.removeRecipe(<botania:manaresource:1>);
apo.addRecipe(<botania:manaresource:1>, [<ore:mysticFlowerPurple>, <botania:flower:9>, <ore:mysticFlowerBrown>,<ore:mysticFlowerGreen>,<minecraft:ender_pearl>,<botania:flower:15>,<ore:mysticFlowerBlue>, <ore:mysticFlowerGray>, <ore:mysticFlowerRed>]);

//Loonium
apo.removeRecipe(<botania:specialflower>.withTag({type: "loonium"}));

//Primal Mana
pool.addInfusion(<forge:bucketfilled>.withTag({FluidName: "mana", Amount: 1000}),<minecraft:bucket>,100000);

//Livingrock
daisy.removeRecipe(<ore:livingrock>);
daisy.addRecipe(<harvestcraft:well>,<botania:livingrock>, 40);

//Jaded Amaranthus (Buff)
pool.addInfusion(<botania:specialflower>.withTag({type: "jadedAmaranthus"}), <ore:flowerRed>, 100);

//Black Iron Ingot
recipes.removeShapeless(<extendedcrafting:material>, [<minecraft:iron_ingot>, <ore:dyeBlack>]);
pool.addAlchemy(<extendedcrafting:material>,<ic2:ingot>,1600);

//Rune of Earth
rune.removeRecipe(<botania:rune:2>);
rune.addRecipe(<botania:rune:2>,[<thaumcraft:tallow>,<harvestcraft:maplesyrupwafflesitem>,<forestry:bee_combs>,<bloodmagic:component:22>,<minecraft:coal>,<botania:manaresource>],3200);

//Rune of Fire
rune.removeRecipe(<botania:rune:1>);
rune.addRecipe(<botania:rune:1>,[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<minecraft:fire_charge>,<thaumcraft:nitor_yellow>,<minecraft:brick>,<botania:manaresource:23>],3200);

//Rune of Air
rune.removeRecipe(<botania:rune:3>);
rune.addRecipe(<botania:rune:3> * 2, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),<minecraft:heavy_weighted_pressure_plate>,<minecraft:feather>,<appliedenergistics2:paint_ball>,<botania:manaresource>], 5200);

//Flux Crystal
rune.addRecipe(<thaumcraft:crystal_vitium>,[<mekanism:machineblock2:11>.withTag({tier: 0, mekData: {fluidTank: {FluidName: "astralsorcery.liquidstarlight", Amount: 14000}}}),<bloodmagic:blood_tank:1>.withTag({Fluid: {FluidName: "astralsorcery.liquidstarlight", Amount: 32000}}),<minecraft:lit_pumpkin>,<bloodmagic:sigil_void>,<botania:brewvial>.withTag({brewKey: "regen"}),<botania:forestdrum:2>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]})], 9100);

//Terra Plate
recipes.replaceAllOccurences(<botania:storage>,<immersiveengineering:storage:8>,<botania:terraplate>);

//Alchemy Catalyst
recipes.replaceAllOccurences(<botania:manaresource:1>,<extendedcrafting:material:2>,<botania:alchemycatalyst>);

//Corporea Crystal Cube
recipes.replaceAllOccurences(<botania:elfglass>,<minecraft:glass>,<botania:corporeacrystalcube>);

//Orechid
var delore=[
"oreMithril",
"oreCopper",
"oreGold",
"oreSilver",
"oreDiamond",
"oreCoal"
] as string[];
for d in delore{
Orechid.removeOre(d);
}

Orechid.addOre("oreCoal",66000);
