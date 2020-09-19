#modloaded thermalexpansion
#priority 4500
import mods.thermalexpansion.InductionSmelter as iS;
import mods.thermalexpansion.Compactor as cp;
import mods.thermalexpansion.Centrifuge as cf;
import mods.thermalexpansion.Transposer as tp;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.recipes.ICraftingRecipe;

global mat as function(int)IItemStack=function (a as int) as IItemStack{return itemUtils.getItem("thermalfoundation:material",a);};

recipes.remove(<thermalexpansion:frame>);

//Gears
val gear=[22,256,288] as int[];
for n in gear{
	for n2 in 0 .. 9{
	var x=n+n2;
		recipes.remove(mat(x));
		if((259>4+x|x>259)&x>25){
		mods.tconstruct.Casting.removeTableRecipe(mat(x));
		}
	}
}
//Block of Steel
recipes.replaceAllOccurences(<ore:ingotSteel>,mat(160),<thermalfoundation:storage_alloy>);

recipes.remove(<thermalexpansion:augment:337>);
recipes.addShaped("Compactor Gear",<thermalexpansion:augment:337>,[[null,<ore:gearLead>,null],[<ore:plateIron>,mat(512),<ore:plateIron>],[null,<minecraft:piston:*>,null]]);

recipes.remove(<thermalexpansion:machine:11>);
recipes.addShaped("Sequential Fabricator",<thermalexpansion:machine:11>,[[<minecraft:iron_ingot>,<ore:workbench>,<minecraft:iron_ingot>],[<ore:ingotTin>,<minecraft:iron_ingot>,<ore:ingotTin>],[<ore:gearCopper>,null,<ore:gearCopper>]]);

//ISmelter
val mithril=[
mat(328),
mat(264),
<thermalfoundation:ore:8>,
mat(72)
] as IItemStack[];
for m in mithril {
	for s in <ore:sand>.items{
iS.removeRecipe(s,m);
}}
/*
val iron=[<ore:dustIron>,<ore:ingotIron>] as IOreDictEntry[];
val coal=[<ore:dustCoal>,<ore:dustCharcoal>,<ore:fuelCoke>] as IOreDictEntry[];
for st in coal{
	for st2 in iron{
		for st3 in st.items{
			for st4 in st2.items{
		iS.removeRecipe(st4,st3);
	}
}}}
*/
//Compactor

val gs=[165,166,167,134] as int[];
for g in gs{
cp.removeGearRecipe(mat(g));
}
cp.removeGearRecipe(<minecraft:diamond>);

<ore:blockLead>.remove(<chisel:blocklead:6>);
recipes.replaceAllOccurences(<ore:workbench>,<thermalexpansion:frame>,<thermalexpansion:device:10>);

recipes.remove(<thermalexpansion:augment:416>);
recipes.addShaped("augment",<thermalexpansion:augment:416>,[[null,<forestry:ffarm:2>.withTag({FarmBlock: 6}),null],[<thaumcraft:elemental_sword:*>,mat(512),<thaumcraft:elemental_sword:*>],[null,<minecraft:piston:*>,null]]);

mods.thermalexpansion.Factorizer.addRecipeCombine(mat(323)*9,<chisel:blocklead:6>);

recipes.remove(<botania:cosmetic:30>);
cf.addRecipeMob(<entity:thaumcraft:firebat>,[<ic2:dust:27>%80],null,1500,300);

tp.addFillRecipe(<botania:alfheimportal>,<appliedenergistics2:spatial_io_port>,<fluid:biodiesel>*8000,8000);