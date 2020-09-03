#priority 5000
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
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