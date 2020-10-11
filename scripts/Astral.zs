#modloaded astralsorcery
import mods.astralsorcery.Altar ;
import mods.astralsorcery.Utils;
import mods.astralsorcery.Grindstone;

var aa ="astralsorcery:shaped/internal/altar/";
var aes ="aes:shaped/internal/altar/";

recipes.addShapeless("Change Attune",<astralsorcery:itemtunedrockcrystal>,[Utils.getCrystalORIngredient(false, true).marked("attun"),<minecraft:stone>], function(o,i,c){return i.attun.updateTag({astralsorcery:{constellationName:"astralsorcery.constellation.mineralis"}});},null);

//illumination powder
Altar.removeAltarRecipe(aa+"illuminationpowder");
Altar.addDiscoveryAltarRecipe(aes+"illuminationpowder",<astralsorcery:itemusabledust>,50,16,[<minecraft:glowstone_dust>,<astralsorcery:itemcraftingcomponent>,<ore:gunpowder>,null,null,null,null,null,null]);

//Silver Ingot
Altar.addDiscoveryAltarRecipe(aes+"silveringot",<ic2:ingot:4>,5,5,[<minecraft:iron_ingot>,null,null,null,null,null,null,null,null]);

//Pam's Pot
recipes.remove(<harvestcraft:potitem>);
Altar.addDiscoveryAltarRecipe(aes+"pot", <harvestcraft:potitem>,250,300, [null,null,null,<ore:stickWood>, <minecraft:brick>, <minecraft:brick>, null, <minecraft:brick>, <minecraft:brick>]);

// Tier 2
Altar.removeAltarRecipe(aa+"upgrade_tier2");
val facade=<appliedenergistics2:facade>.withTag({item: "astralsorcery:blockmarble"});
Altar.addDiscoveryAltarRecipe(aes+"upgrade_tier2",<astralsorcery:blockaltar:1>, 350, 100, [<bloodmagic:blood_tank>,facade,<bloodmagic:blood_tank>,facade,<appliedenergistics2:part:360>,facade,<bloodmagic:blood_tank>,facade,<bloodmagic:blood_tank>]);

Altar.addDiscoveryAltarRecipe(aes+"blackIron",<extendedcrafting:trimmed:5>*5,50,120,[<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_sword>,<minecraft:iron_hoe>,<minecraft:iron_helmet>,<minecraft:iron_chestplate>,<minecraft:iron_leggings>,<minecraft:iron_boots>,<psi:cad_assembly:1>]);

val wd=<mekanism:sawdust>;
Altar.addAttunmentAltarRecipe(aes+"silverWood",<thaumcraft:plank_silverwood>*16,1200,100,[wd,wd,wd,wd,<minecraft:slime_ball>,wd,wd,wd,wd,<ore:blockSilver>,<ore:blockSilver>,<ore:blockSilver>,<ore:blockSilver>]);

//Research Table
recipes.remove(<thaumcraft:table_wood>);
Altar.addAttunmentAltarRecipe(aes+"researchTable",<thaumcraft:table_wood>,600,200,[<thaumcraft:slab_greatwood>,<tconstruct:tooltables:1>.withTag({textureBlock: {id: "thaumcraft:plank_greatwood", Count: 1 as byte, Damage: 0 as short}}),<thaumcraft:slab_greatwood>,null,<minecraft:ender_pearl>,null,<appliedenergistics2:part:120>,<minecraft:stone_pressure_plate>,<appliedenergistics2:part:120>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>]);

recipes.addShaped("Lightwell",<astralsorcery:blockwell>, [[<minecraft:stone>, null, <minecraft:stone>],[<minecraft:wool>, <minecraft:glass_pane>, <minecraft:wool>], [<minecraft:stone>, <minecraft:bucket>, <minecraft:stone>]]);

// Small Lapis dust
Grindstone.addRecipe(<thermalfoundation:material:136>,<thermalfoundation:material:72>);

//Red Heart
Grindstone.addRecipe(<harvestcraft:grilledcheeseitem>,<bhc:red_heart>,1);

recipes.addShaped(<astralsorcery:itemwand>, [[null, null, <botania:spark>],[null, <astralsorcery:itemcraftingcomponent>, null], [<exnihilocreatio:item_material:6>, null, null]]);

val tcv=<thaumcraft:ingot:1>;
Altar.removeAltarRecipe("astralsorcery:shaped/attunementaltar");
Altar.addAttunmentAltarRecipe(aes+"attune",<astralsorcery:blockattunementaltar>,1200,150,[<botania:quartztypesunny>,<astralsorcery:itemskyresonator>,<botania:quartztypesunny>,tcv,<astralsorcery:blockaltar:1>,tcv,tcv,<bloodmagic:sigil_blood_light>,tcv,<botania:sparkupgrade>,<botania:sparkupgrade>,<actuallyadditions:item_resonant_rice>,<actuallyadditions:item_resonant_rice>]);