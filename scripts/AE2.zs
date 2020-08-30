#modloaded appliedenergistics2
import mods.appliedenergistics2.Grinder;
import mods.rockytweaks.Anvil;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;

var circuit=["Logic Circuit","Calculation Circuit","Engineering Circuit","Silicon Circuit"] as string[];
var inp=[<minecraft:gold_ingot>,<appliedenergistics2:material:10>,<minecraft:dye:4>,<appliedenergistics2:material:5>] as IItemStack[];
var outp=[18,16,17,20] as int[];
var processor=[22,23,24] as int[];
val circuitDef=<appliedenergistics2:material>.definition;
for k in 0 .. 4{
var out = circuitDef.makeStack(outp[k]);
var namePress = <appliedenergistics2:material:21>.withTag({InscribeName: circuit[k]}).reuse();
	Anvil.addRecipe(namePress,inp[k],out,1);	
	if(k !=3){
		recipes.addShaped(circuitDef.makeStack(processor[k])*15, [[<immersiveengineering:mold:6>.reuse(), <projectred-core:resource_item:251>, null],[<immersiveengineering:tool>, <appliedenergistics2:material:20>, null], [null, out, null]]);
	}
}
//Tooltip for Name Press
<appliedenergistics2:material:21>.addTooltip(format.red("Won't be consumed after crafting circuits."));

recipes.remove(<appliedenergistics2:part:340>);
recipes.remove(<appliedenergistics2:inscriber>);

recipes.addShapeless(<minecraft:gold_ingot> * 8, [<minecraft:golden_apple>]);
recipes.addShaped("Golden Apple",<minecraft:golden_apple>, [[<appliedenergistics2:paint_ball:24>, <harvestcraft:saltitem>, <appliedenergistics2:paint_ball:24>],[<appliedenergistics2:paint_ball:24>, <minecraft:apple>, <appliedenergistics2:paint_ball:24>], [<appliedenergistics2:paint_ball:24>, <harvestcraft:saltitem>, <appliedenergistics2:paint_ball:24>]]);

recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped("Charger",<appliedenergistics2:charger>, [[<extrautils2:decorativesolid:3>, <appliedenergistics2:material>, <extrautils2:decorativesolid:3>],[<extrautils2:decorativesolid:3>, <minecraft:iron_trapdoor>, null], [<extrautils2:decorativesolid:3>, <appliedenergistics2:material>, <extrautils2:decorativesolid:3>]]);

recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped("Grindstone", <appliedenergistics2:grindstone>, [[<minecraft:cobblestone>, <appliedenergistics2:material:40>, <minecraft:cobblestone>], [<appliedenergistics2:material:7>, <minecraft:cobblestone>, <appliedenergistics2:material:7>], [<minecraft:cobblestone>,<appliedenergistics2:material:7>, <minecraft:cobblestone>]]);

//Vibration Chamber
recipes.replaceAllOccurences(<minecraft:furnace>,<thaumcraft:smelter_basic>, <appliedenergistics2:vibration_chamber>);

//ME Controller
recipes.replaceAllOccurences(<appliedenergistics2:smooth_sky_stone_block>,<bloodmagic:ritual_stone>,<appliedenergistics2:controller>);

//Crafting Terminal
recipes.replaceAllOccurences(<ore:workbench>,<botania:autocraftinghalo>,<appliedenergistics2:part:360>);

recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped("1k Storage Component",<appliedenergistics2:material:35>, [[<botania:manaresource:6>, <minecraft:iron_ingot>, <botania:manaresource:6>],[<minecraft:iron_ingot>, <appliedenergistics2:quartz_block>, <minecraft:iron_ingot>], [<botania:manaresource:6>, <minecraft:iron_ingot>, <botania:manaresource:6>]]);

//Condenser
recipes.replaceAllOccurences(<appliedenergistics2:material:8>,<ore:dyePurple>, <appliedenergistics2:condenser>);

//Grinder.addRecipe(output,  i, int turns, ....)
Grinder.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}), <minecraft:grass>,1);
Grinder.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "machina"}]}), <thermalfoundation:material:24>,1);
Grinder.addRecipe(<appliedenergistics2:material:5>*8,<appliedenergistics2:quartz_block>,1);


