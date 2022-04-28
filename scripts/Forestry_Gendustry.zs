#modloaded forestry
#modloaded gendustry
#modloaded magicbees

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.forestry.Carpenter;

val Ash=<forestry:ash>;
Carpenter.removeRecipe(<forestry:portable_alyzer>);
recipes.addShaped("Bee ana",<forestry:portable_alyzer>,[[Ash,<forestry:pipette>,Ash],[Ash,<forestry:stamps>,Ash],[Ash,<forestry:resource_storage>,Ash]]);

Carpenter.removeRecipe(<forestry:habitat_screen>);
recipes.addShaped("weather",<forestry:habitat_screen>,[[Ash,<forestry:pipette>,Ash],[Ash,<forestry:stamps:3>,Ash],[Ash,<forestry:resource_storage>,Ash]]);
recipes.addShapeless("Honey Drop",<forestry:honey_drop>,[<ore:beeComb>]);

//Bee House
recipes.replaceAllOccurences(<ore:beeComb>,<ore:blockGlass>,<forestry:bee_house>);

//Apiary
recipes.replaceAllOccurences(<forestry:impregnated_casing>,<ore:beeComb>,<forestry:apiary>);

//Peat2
val cd=<minecraft:dirt:1>; val sd=<ore:sand>;
recipes.remove(<forestry:bog_earth>);
recipes.addShaped("Bog Earth",<forestry:bog_earth>*8,[[cd,sd,cd],[sd,<forestry:can:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),sd],[cd,sd,cd]]);

recipes.replaceAllOccurences(<forestry:propolis:*>,<ore:slimeball>,<forestry:bituminous_peat>);
furnace.remove(Ash);
recipes.remove(<forestry:ash_brick>);
recipes.addShaped("Ash Brick",<forestry:ash_brick>*2,[[<ore:dustAsh>,<minecraft:brick:*>,<ore:dustAsh>],[<minecraft:brick:*>,<forestry:bituminous_peat>,<minecraft:brick:*>],[<ore:dustAsh>,<minecraft:brick:*>,<ore:dustAsh>]]);


recipes.addShaped("Escritoire",<forestry:escritoire>,[[<ore:fenceWood>,null,null],[<astralsorcery:blockinfusedwood>,<astralsorcery:blockinfusedwood>,<astralsorcery:blockinfusedwood>],[<ore:fenceWood>,null,<ore:fenceWood>]]);

val bal=<magicbees:propolis:5>;
val woolList=[0,14,4,12,15,3,13] as int[];
var i=0;
for k in woolList{
var ch= itemUtils.getItem("minecraft:wool",k) ;
	if(i==5){var ch=<minecraft:ice>;} 
		recipes.addShaped(itemUtils.getItem("forestry:beehives",i),[[bal,bal,bal],[bal,ch,bal],[bal,bal,bal]]);
	i=i+1;
}

recipes.addShaped("Soul Wax",<magicbees:wax:1>*16, [[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>],[<thaumictinkerer:soul_mould>, <ore:beeComb>, <thaumictinkerer:soul_mould>],[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]]);

recipes.addShapeless("Soul Mould",<thaumictinkerer:soul_mould>,[<minecraft:soul_sand>,<ore:beeComb>]);

//Power Module

//Database
recipes.remove(<forestry:database>);
recipes.addShaped("Database", <forestry:database>, [[<ore:ingotBronze>, <forestry:portable_alyzer:*>, <ore:ingotBronze>], [<draconicevolution:draconium_chest>, <forestry:sturdy_machine:*>, <draconicevolution:draconium_chest>], [<ore:plankWood>, <forestry:fruits:4>, <ore:plankWood>]]);