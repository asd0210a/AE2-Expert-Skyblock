#modloaded thermalexpansion
#priority 4500
import mods.thermalexpansion.InductionSmelter as iS;
import mods.thermalexpansion.Compactor as cp;
import mods.thermalexpansion.Centrifuge as cf;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

//Gears
val mat=<thermalfoundation:material>.definition;
val gear=[22,256,288] as int[];

for n in gear{
	for n2 in 0 .. 9{
		recipes.remove(mat.makeStack(n+n2));
		if(259-n-n2>4|0>259-n-n2|25>n+n2){
		mods.tconstruct.Casting.removeTableRecipe(mat.makeStack(n+n2));
		}
	}
}

//Block of Steel
recipes.replaceAllOccurences(<ore:ingotSteel>,<thermalfoundation:material:160>,<thermalfoundation:storage_alloy>);

recipes.remove(<thermalexpansion:augment:337>);
recipes.addShaped("Compactor Gear", <thermalexpansion:augment:337>, [[null, <ore:gearLead>, null], [<ore:plateIron>, <thermalfoundation:material:512>, <ore:plateIron>], [null, <minecraft:piston:*>, null]]);

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

<ore:blockLead>.remove(<chisel:blocklead:6>);
recipes.replaceAllOccurences(<ore:workbench>,<thermalexpansion:frame>,<thermalexpansion:device:10>);

recipes.remove(<thermalexpansion:augment:416>);
recipes.addShaped("augment", <thermalexpansion:augment:416>, [[null,<forestry:ffarm:2>.withTag({FarmBlock: 6}), null],[<thaumcraft:elemental_sword:*>,<thermalfoundation:material:512>,<thaumcraft:elemental_sword:*>], [null, <minecraft:piston:*>, null]]);

mods.thermalexpansion.Factorizer.addRecipeCombine(<thermalfoundation:material:323>*9,<chisel:blocklead:6>);

recipes.remove(<botania:cosmetic:30>);
cf.addRecipeMob(<entity:botania:pixie>,[<ic2:dust:27>%30],null,1500,300);