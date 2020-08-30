#modloaded thermalexpansion
#ignoreBracketErrors
import mods.thermalexpansion.InductionSmelter as iS;
import mods.thermalexpansion.Compactor as cp;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

recipes.remove(<thermalfoundation:material:22>);
recipes.remove(<thermalfoundation:material:23>);
recipes.remove(<thermalfoundation:material:24>);
//Block of Steel
recipes.replaceAllOccurences(<ore:ingotSteel>,<thermalfoundation:material:160>,<thermalfoundation:storage_alloy>);

recipes.remove(<thermalexpansion:machine:11>);
recipes.addShaped("Sequential Fabricator", <thermalexpansion:machine:11>, [[<minecraft:iron_ingot>, <ore:workbench>, <minecraft:iron_ingot>], [<ore:ingotTin>, <minecraft:iron_ingot>, <ore:ingotTin>], [<ore:gearCopper>, null, <ore:gearCopper>]]);

var mithril=[
<thermalfoundation:material:328>,
<thermalfoundation:material:264>,
<thermalfoundation:ore:8>,
<thermalfoundation:material:72>
] as IItemStack[];
val sand=<ore:sand>;

for m in mithril {
	for s in sand.items{
iS.removeRecipe(s,m);
}
}
furnace.remove(<thermalfoundation:material:136>, <thermalfoundation:ore:8>);
cp.removeGearRecipe(<minecraft:diamond>);
