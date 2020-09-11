#modloaded forestry
#modloaded gendustry
#modloaded magicbees

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import mods.forestry.Carpenter;

Carpenter.removeRecipe(<forestry:portable_alyzer>);
recipes.addShaped("Bee ana",<forestry:portable_alyzer>, [[<forestry:ash>, <forestry:pipette>, <forestry:ash>],[<forestry:ash>, <forestry:stamps>, <forestry:ash>], [<forestry:ash>, <forestry:resource_storage>, <forestry:ash>]]);

Carpenter.removeRecipe(<forestry:habitat_screen>);
recipes.addShaped("weather",<forestry:portable_alyzer>, [[<forestry:ash>, <forestry:pipette>, <forestry:ash>],[<forestry:ash>, <forestry:stamps:3>, <forestry:ash>], [<forestry:ash>, <forestry:resource_storage>, <forestry:ash>]]);
recipes.addShapeless("Honey Drop",<forestry:honey_drop>,[<ore:beeComb>]);

//Bee House
recipes.replaceAllOccurences(<ore:beeComb>,<ore:blockGlass>,<forestry:bee_house>);

//Apiary
recipes.replaceAllOccurences(<forestry:impregnated_casing>,<ore:beeComb>,<forestry:apiary>);

recipes.addShaped("Escritoire",<forestry:escritoire>, [[<ore:fenceWood>, null, null],[<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>], [<ore:fenceWood>, null, <ore:fenceWood>]]);

val bal as IItemStack=<magicbees:propolis:5>;
val woolList=[0,14,4,12,15,3,13] as int[];
var woolDef=<minecraft:wool>.definition;
val hiveDef = <forestry:beehives>.definition;
var i=0;
for k in woolList{
var ch  as IItemStack= woolDef.makeStack(k) ;
	if(i == 5 ) {
		var ch as IItemStack= <minecraft:ice>;
	} 
		recipes.addShaped(hiveDef.makeStack(i),[[bal,bal,bal],[bal,ch,bal],[bal,bal,bal]]);
	i=i+1;
}
