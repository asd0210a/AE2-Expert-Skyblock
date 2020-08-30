import mods.extendedcrafting.TableCrafting as table;
import mods.extendedcrafting.EnderCrafting as Ender;
import mods.extendedcrafting.CompressionCrafting as comp;

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

recipes.remove(<extendedcrafting:table_basic>);
recipes.addShaped("Basic Crafting Table",<extendedcrafting:table_basic>, [[<botania:spark>, <excompressum:iron_mesh>, <botania:spark>],[<chisel:antiblock>, <bloodmagic:path:1>, <chisel:antiblock>], [<appliedenergistics2:part:75>, <appliedenergistics2:part:75>, <appliedenergistics2:part:75>]]);

recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShaped("Advanced Crafting Table",<extendedcrafting:table_advanced>, [[null, <harvestcraft:juiceritem>, null],[<minecraft:golden_apple:1>, <extendedcrafting:table_basic>, <minecraft:golden_apple:1>], [null, <minecraft:golden_apple:1>, null]]);

recipes.remove(<extendedcrafting:table_elite>);
recipes.addShaped("Elite Crafting Table",<extendedcrafting:table_elite>, [[<thaumcraft:shimmerleaf>, <botania:cosmetic:10>, <thaumcraft:cinderpearl>],[<thaumcraft:ore_quartz>, <extendedcrafting:table_advanced>, <thaumcraft:ore_quartz>], [<chisel:lapis:3>, <thaumcraft:vishroom>, <chisel:lapis:3>]]);

recipes.addShaped(<extendedcrafting:material:8>, [[null, <appliedenergistics2:material:11>, null],[<appliedenergistics2:material:11>, <extendedcrafting:material:9>, <appliedenergistics2:material:11>], [null, <appliedenergistics2:material:11>, null]]);

recipes.addShaped(<extendedcrafting:material:9>, [[null, <thaumcraft:ingot:2>, null],[<thaumcraft:ingot:2>, <extendedcrafting:material:10>, <thaumcraft:ingot:2>], [null, <thaumcraft:ingot:2>, null]]);

recipes.addShaped(<extendedcrafting:material:10>, [[null, <astralsorcery:itemperkgem>, null],[<astralsorcery:itemperkgem>, <extendedcrafting:material:11>, <astralsorcery:itemperkgem>], [null, <astralsorcery:itemperkgem>, null]]);

recipes.addShaped(<extendedcrafting:material:11>, [[<minecraft:emerald>, null, <minecraft:emerald>],[null, <extendedcrafting:material:12>, null], [<minecraft:emerald>, null, <minecraft:emerald>]]);

recipes.replaceAllOccurences(<minecraft:gunpowder>,<ic2:dust:15>,<extendedcrafting:material:7>);
recipes.replaceAllOccurences(<minecraft:ender_eye>,<extendedcrafting:material>,<extendedcrafting:ender_crafter>);

mods.thaumcraft.Crucible.registerRecipe("Black Iron Slate","BASEALCHEMY",<extendedcrafting:material:2>,<extendedcrafting:material:8>,[<aspect:permutatio>*40,<aspect:potentia>*10,<aspect:desiderium>*10]);

//Beacon
Ender.addShaped(<minecraft:beacon>, [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <ore:netherStar>, <ore:blockGlassColorless>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

//9x9 Craft
val m =<thermalfoundation:storage:8>; //Mithril Block
val b =<extrautils2:decorativebedrock>;//Bedrock Brick

//IC2 Generator
val t = <bloodmagic:decorative_brick>;//BM Bloodstone Tile
val r =<botania:storage:2>;
val d=<minecraft:diamond_block>;
val e=<harvestcraft:thankfuldinneritem>;//Thankful Dinner
val bu = <forestry:butterfly_ge:*>;//Butterfly
val p=<projectred-expansion:solar_panel>;
table.addShaped(4,<ic2:te:3>,[
[r,r,b,b,b,b,b,r,r],
[r,bu,d,d,d,d,d,bu,r],
[b,e,<botania:cosmetic:21>,m,<astralsorcery:itemperkgem>,m,<botania:cosmetic:21>,e,b],
[b,<actuallyadditions:item_food:14>,m,m,<thaumcraft:seal:10>,m,m,<actuallyadditions:item_food:14>,b],
[b,<bloodmagic:blood_tank:2>,m,<thaumcraft:seal:8>,<ore:gaiaDisc>,<thaumcraft:seal:11>,m,<bloodmagic:blood_tank:2>,b],
[b,<actuallyadditions:item_food:14>,m,m,<thaumcraft:seal:15>,m,m,<actuallyadditions:item_food:14>,b],
[b,e,<astralsorcery:itemperkgem:1>,m,<botania:dice>,m,<astralsorcery:itemperkgem:2>,e,b],
[p,bu,t,t,t,t,t,bu,p],
[p,p,t,t,t,t,t,p,p]]);

//Pattern Terminal
val i=<thermalfoundation:material:136>; //Mithril Ingot
val f=<chisel:futura:1>;//futura block
val w=<forestry:planks.0:13>;//Walnut Wood Plank
val g=<botania:manaresource:5>;//Gaia Spirit

function pt(a as int) as IItemStack{
	return <botania:craftpattern>.definition.makeStack(a);
}

recipes.remove(<extrautils2:indexerremote>);
recipes.addShaped("Indexer Remote", <extrautils2:indexerremote>, [[<ore:stone>, <extrautils2:ingredients:2>, <ore:stone>], [<ore:stone>, <extrautils2:indexer>, <ore:stone>], [<ore:stone>, <extrautils2:ingredients:2>, <ore:stone>]]);
recipes.remove(<immersiveengineering:toolbox>);
recipes.addShaped("Toolbox", <immersiveengineering:toolbox>, [[null,<immersiveengineering:maintenance_kit>,null],[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:dyeRed>, <immersiveengineering:wooden_device0>, <ore:dyeRed>]]);

table.addShaped(4,<appliedenergistics2:part:340>,[
[f,f,f,f,f,i,<actuallyadditions:item_booklet>,<industrialforegoing:book_manual>,<extrautils2:book>],
[f,w,g,w,f,i,<guideapi:bloodmagic-guide>,<immersiveengineering:tool:3>,<forestry:book_forester>],
[f,g,<appliedenergistics2:part:480>,g,f,i,<bloodmagic:slate:1>,<thaumcraft:morphic_resonator>,<bloodmagic:slate:1>],
[f,w,g,w,f,i,<thaumcraft:golem>.withTag({props: 0 as long}),<bloodmagic:sanguine_book>,<thaumcraft:golem>.withTag({props: 288515162598539264 as long})],
[f,f,f,f,f,i,<immersiveengineering:metal_device1>,<immersiveengineering:toolbox>,<immersiveengineering:metal_device1>],
[i,i,i,i,i,<extrautils2:indexerremote>,i,i,i],
[pt(0),pt(1),pt(2),<bloodmagic:sigil_divination>,<bloodmagic:sigil_holding>,i,<industrialforegoing:item_splitter>,<forestry:worktable>,<thermalexpansion:machine:11>],
[pt(3),pt(4),pt(5),<bloodmagic:sigil_lava>,<bloodmagic:sigil_water>,i,<thaumcraft:pattern_crafter>,<botania:craftinghalo>,<actuallyadditions:item_crafter_on_a_stick>],
[pt(6),pt(7),pt(8),<appliedenergistics2:material:48>,<appliedenergistics2:material:48>,i,<ic2:te:88>,<botania:opencrate:1>,<extrautils2:crafter>]]);

//Crystaltine Ingot
table.remove(<extendedcrafting:material:24>);
table.addShaped(0, <extendedcrafting:material:24>, [
	[<ore:crystalFluix>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:crystalFluix>], 
	[<ore:crystalCertusQuartz>, <ore:nuggetAlubrass>, <ore:ingotSilver>, <ore:ingotGold>, <ore:ingotSilver>, <ore:nuggetAlubrass>, <ore:crystalCertusQuartz>], 
	[<ore:crystalCertusQuartz>, <ore:nuggetAlubrass>, <ore:ingotSilver>, <ore:ingotGold>, <ore:ingotSilver>, <ore:nuggetAlubrass>, <ore:crystalCertusQuartz>], 
	[<ore:crystalFluix>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:crystalFluix>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

comp.addRecipe(<teslacorelib:machine_case>,<minecraft:iron_bars>,1000,<extendedcrafting:frame>,10000);