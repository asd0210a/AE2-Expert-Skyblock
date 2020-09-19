import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.mekanism.enrichment;
import mods.mekanism.crusher;

recipes.remove(<mekanism:transmitter:*>);
recipes.remove(<mekanism:basicblock:8>);

recipes.addShaped(<mekanism:basicblock:8> * 3, [[<ic2:resource:11>, <extrautils2:soundmuffler>, <ic2:resource:11>],[<chisel:blockgold:6>, <ic2:resource>, <chisel:blockgold:6>], [<ic2:resource:11>, <chisel:blockgold:6>, <ic2:resource:11>]]);