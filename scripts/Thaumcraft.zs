#modloaded thaumcraft
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.ArcaneWorkbench as table;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;

import crafttweaker.item.IItemStack;

recipes.remove(<thaumcraft:thaumium_helm>);
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.remove(<thaumcraft:thaumium_boots>);
recipes.replaceAllOccurences(<minecraft:dragon_egg:*>,<thaumictinkerer:black_quartz_block>,<magicbees:resource:11>);
recipes.replaceAllOccurences(<forestry:frame_proven>,<forestry:frame_untreated>,<magicbees:frames.oblivion>);

recipes.remove(<thaumcraft:plate:1>);
recipes.addShaped("Iron Plate",<thaumcraft:plate:1>,[[null,<minecraft:piston>.reuse(),null],[<psi:material>,<minecraft:iron_ingot>,<psi:material>],[null,<minecraft:anvil:*>.reuse(),null]]);

recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped("stoneTable",<thaumcraft:table_stone>,[[<minecraft:stone_slab>,<minecraft:stone_slab>,<minecraft:stone_slab>],[<ore:stone>,<thaumcraft:research_table>,<ore:stone>]]);

table.removeRecipe(<thaumcraft:thaumometer>);
recipes.addShaped("Thaumometer",<thaumcraft:thaumometer>,[[null,<minecraft:iron_ingot>,null],[<minecraft:iron_ingot>,<ore:paneGlass>,<minecraft:iron_ingot>],[null,<minecraft:iron_ingot>,null]]);

table.registerShapedRecipe("Lumiuous Crafting Table","BASEALCHEMY",10,[<aspect:aqua>],<astralsorcery:blockaltar>,[[<astralsorcery:blockmarble>,<astralsorcery:itemcraftingcomponent>,<astralsorcery:blockmarble>],[null,<ore:workbench>,null],[<ore:livingwood>,<ore:livingwood>,<ore:livingwood>]]);

recipes.remove(<botania:pylon:2>);
table.registerShapedRecipe("Gaia Pylon","INFUSIONSTABLE",500,[<aspect:aqua>*10,<aspect:ignis>*10,<aspect:terra>*10,<aspect:ordo>*10,<aspect:aer>*10,<aspect:perditio>*10],<botania:pylon:2>,[[<botania:manaresource:8>,<botania:manaresource:7>,<botania:manaresource:9>],[<astralsorcery:blockritualpedestal>,<botania:pylon:1>,<bloodmagic:activation_crystal>],[<forge:bucketfilled>.withTag({FluidName: "lifeessence",Amount: 1000}),<thaumcraft:stabilizer>,<forge:bucketfilled>.withTag({FluidName: "lifeessence",Amount: 1000})]]);

//Inculde TiC FurnaceC
recipes.remove(<tconstruct:seared_furnace_controller>);
table.registerShapedRecipe("TC smelter","UNLOCKALCHEMY",50,[<aspect:ignis>],<thaumcraft:smelter_basic>,[[<ore:plateBrass>,<thaumcraft:crucible>,<ore:plateBrass>],[<ore:cobblestone>,<tconstruct:seared_furnace_controller>,<ore:cobblestone>],[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]]);

Infusion.registerRecipe("Steel Ingot","INFUSION",<thermalfoundation:material:160>,0,[<aspect:ignis>,<aspect:metallum>*5],<minecraft:iron_ingot>,[<ic2:coke>,<botania:rune:1>,<thaumcraft:jar_brace>,<thaumcraft:jar_brace>,<appliedenergistics2:material:7>]);

//Vis Generator & Magical Wood
recipes.remove(<extrautils2:decorativesolidwood:1>)
table.removeRecipe(<thaumcraft:vis_generator>);
recipes.addShaped(<thaumcraft:vis_generator>, [[<minecraft:lever>, null, <extrautils2:decorativesolidwood:1>],[null, <thaumcraft:arcane_workbench>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})], [<appliedenergistics2:material:26>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), null]]);

var gears=[<thaumcraft:fortress_chest>,<thaumcraft:fortress_legs>,<thaumcraft:fortress_helm>] as IItemStack[];
for t in gears{
Infusion.removeRecipe(t);
}

Infusion.registerRecipe("Bullet Blue Print","",<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}),150,[<aspect:ignis>*32,<aspect:humanus>*64,<aspect:aversio>*48,<aspect:tenebrae>*48],<extrautils2:playerchest>,[<thermalfoundation:material:264>,<actuallyadditions:item_crate_keeper>,<gendustry:gene_template>,<ic2:remote>,<mekanism:balloon:4>,<ic2:cover:1>,<industrialforegoing:laser_lens_inverted:3>,<appliedenergistics2:tiny_tnt>,<immersiveengineering:material:15>]);

Infusion.removeRecipe(<thaumicenergistics:infusion_provider>);
Infusion.registerRecipe("Infusion Provider","INFUSIONPROVIDER",<thaumicenergistics:infusion_provider>,1,[<aspect:machina>*25,<aspect:praecantatio>*25,<aspect:perditio>*20],<teslacorelib:machine_case>,[<thaumcraft:salis_mundus>,<thaumicenergistics:diffusion_core>,<thaumcraft:salis_mundus>,<thaumicenergistics:coalescence_core>]);

Crucible.registerRecipe("AutoCertus","",<appliedenergistics2:material:2>,<appliedenergistics2:material>,[<aspect:metallum>]);

Crucible.registerRecipe("AutoFluix","",<appliedenergistics2:material:8>,<appliedenergistics2:material:7>,[<aspect:metallum>]);

Crucible.registerRecipe("Mithril Gear","",<thermalfoundation:material:264>,<thermalfoundation:material:72>,[<aspect:machina>*8]);

recipes.remove(<thaumcraft:ingot:1>);
Crucible.removeRecipe(<thaumcraft:ingot:1>);

<minecraft:blaze_powder>.removeAspects([<aspect:alkimia>,<aspect:potentia>]);
/*
-Aspects
<aspect:aer>
<aspect:alienis>
<aspect:alkimia>
<aspect:aqua>
<aspect:auram>
<aspect:aversio>
<aspect:bestia>
<aspect:cognitio>
<aspect:desiderium>
<aspect:exanimis>
<aspect:fabrico>
<aspect:gelum>
<aspect:herba>
<aspect:humanus>
<aspect:ignis>
<aspect:instrumentum>
<aspect:lux>
<aspect:machina>
<aspect:metallum>
<aspect:mortuus>
<aspect:motus>
<aspect:ordo>
<aspect:perditio>
<aspect:permutatio>
<aspect:potentia>
<aspect:praecantatio>
<aspect:praemunio>
<aspect:sensus>
<aspect:spiritus>
<aspect:tenebrae>
<aspect:terra>
<aspect:vacuos>
<aspect:victus>
<aspect:vinculum>
<aspect:vitium>
<aspect:vitreus>
<aspect:volatus>
*/