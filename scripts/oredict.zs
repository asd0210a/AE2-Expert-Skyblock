#priority 5000
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

import mods.botania.Orechid;
import mods.actuallyadditions.MiningLens as AAmine;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;


//Quest_Chicken
val qck = <ore:foodGroundchicken>;
qck.add(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}));

var gaiaDiscOred=<ore:gaiaDisc>;
gaiaDiscOred.addItems([<botania:recordgaia2>,<botania:recordgaia1>]);

val osteel =<ore:blockSteel>;
val steel =<ic2:resource:8>;
osteel.remove(steel);
recipes.remove(steel);
recipes.replaceAllOccurences(osteel,<ic2:ingot:5>,steel);

val beed=<ore:nuggetDiamond>;
val md=<minecraft:diamond>;
recipes.remove(md);
recipes.addShapeless(md, [<ore:blockDiamond>]);
recipes.addShaped("Diamond",md, [[beed, beed, beed],[beed, beed, beed], [beed, beed, beed]]);

val delore=[
"Cinnabar",
"Platinum",
"Uranium",
"Mithril",
"Silver",
"Aluminum",
"Copper",
"Tin",
"Lead",
"Gold",
"Iron",
"Diamond",
"Osmium",
"Amber",
"Apatite",
"Coal",
"Uranium",
"Magnetite",
"Lapis",
"Pyrite",
"Bauxite",
"Silt",
] as string[];

	for d in delore{
	Orechid.removeOre("ore"~d);
	AAmine.removeStoneOre(oreDict["ore"~d]);
	Excavator.removeMineral(d);
	}
	
//Botania
	Orechid.addOre("oreAluminum",10000);
	Orechid.addOre("oreTin",10000);
	Orechid.addOre("oreLead",10000);
	Orechid.addOre("oreAmber",2000);
	Orechid.addOre("oreApatite",5000);
	Orechid.addOre("oreCoal",2000);

//AA
	AAmine.addStoneOre(<ore:oreOsmium>,20);
	AAmine.addStoneOre(<ore:oreAmber>,90);
	AAmine.addStoneOre(<ore:oreCoal>,30);
	
//IE
	Excavator.addMineral("Uranium", 50, 0.005, ["oreUranium", "oreDiamond"], [0.005, 0.01]);