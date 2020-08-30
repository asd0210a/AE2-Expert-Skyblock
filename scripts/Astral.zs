#modloaded astralsorcery
import mods.astralsorcery.Altar ;
var aa ="astralsorcery:shaped/internal/altar/";
var aes ="aes:shaped/internal/altar/";

//illumination powder
Altar.removeAltarRecipe(aa+"illuminationpowder");
Altar.addDiscoveryAltarRecipe(aes+"illuminationpowder",<astralsorcery:itemusabledust>,200,16,[<minecraft:glowstone_dust>,<astralsorcery:itemcraftingcomponent>,<ore:gunpowder>,null,null,null,null,null,null]);

//Silver Ingot
Altar.addDiscoveryAltarRecipe(aes+"silveringot",<ic2:ingot:4>,5,5,[<minecraft:iron_ingot>,null,null,null,null,null,null,null,null]);

//Pam's Pot
recipes.remove(<harvestcraft:potitem>);
Altar.addDiscoveryAltarRecipe(aes+"pot", <harvestcraft:potitem>,250,300, [null,null,null,<ore:stickWood>, <minecraft:brick>, <minecraft:brick>, null, <minecraft:brick>, <minecraft:brick>]);

// Tier 2
Altar.removeAltarRecipe(aa+"upgrade_tier2");
Altar.addDiscoveryAltarRecipe(aes+"upgrade_tier2",<astralsorcery:blockaltar:1>, 350, 100, [<bloodmagic:blood_tank>,<appliedenergistics2:facade>.withTag({item: "astralsorcery:blockmarble"}),<bloodmagic:blood_tank>,<appliedenergistics2:facade>.withTag({item: "astralsorcery:blockmarble"}),<appliedenergistics2:part:360>,<appliedenergistics2:facade>.withTag({item: "astralsorcery:blockmarble"}),<bloodmagic:blood_tank>,<appliedenergistics2:facade>.withTag({item: "astralsorcery:blockmarble"}),<bloodmagic:blood_tank>]);

Altar.addDiscoveryAltarRecipe(aes+"blackIron",<extendedcrafting:trimmed:5>*5,50,120,[<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_sword>,<minecraft:iron_hoe>,<minecraft:iron_helmet>,<minecraft:iron_chestplate>,<minecraft:iron_leggings>,<minecraft:iron_boots>,<psi:cad_assembly:1>]);

var wd=<mekanism:sawdust>;
Altar.addAttunmentAltarRecipe(aes+"silverWood",<thaumcraft:plank_silverwood>*16,1200,100,[wd,wd,wd,wd,<minecraft:slime_ball>,wd,wd,wd,wd,<ore:blockSilver>,<ore:blockSilver>,<ore:blockSilver>,<ore:blockSilver>]);

//Research Table
recipes.remove(<thaumcraft:table_wood>);
Altar.addAttunmentAltarRecipe(aes+"researchTable",<thaumcraft:table_wood>,600,200,[<thaumcraft:slab_greatwood>,<tconstruct:tooltables:1>.withTag({textureBlock: {id: "thaumcraft:plank_greatwood", Count: 1 as byte, Damage: 0 as short}}),<thaumcraft:slab_greatwood>,null,<minecraft:ender_pearl>,null,<appliedenergistics2:part:120>,<minecraft:stone_pressure_plate>,<appliedenergistics2:part:120>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>]);

recipes.addShaped("Lightwell",<astralsorcery:blockwell>, [[<minecraft:stone>, null, <minecraft:stone>],[<minecraft:wool>, <minecraft:glass_pane>, <minecraft:wool>], [<minecraft:stone>, <minecraft:bucket>, <minecraft:stone>]]);

// Small Lapis dust
mods.astralsorcery.Grindstone.addRecipe(<ic2:dust:9>, <ic2:dust:22>, 0.7f);
mods.astralsorcery.Grindstone.addRecipe(<thermalfoundation:material:136>,<thermalfoundation:material:72>);