#modloaded chisel
import crafttweaker.oredict.IOreDictEntry;import crafttweaker.item.IItemStack;import crafttweaker.item.IItemDefinition;import crafttweaker.item.IIngredient;

val dc=<chisel:chisel_diamond>;
recipes.remove(<chisel:chisel_hitech>);
recipes.remove(<chisel:auto_chisel>);
recipes.remove(<chisel:chisel_iron>);
recipes.remove(dc);
recipes.addShaped(<chisel:chisel_iron>,[[<minecraft:redstone>,<minecraft:cobblestone>,<minecraft:redstone>],[<minecraft:flint>,<minecraft:dye:15>,<minecraft:flint>],[null,<minecraft:stick>,null]]);
recipes.addShaped(dc,[[null,null,<extrautils2:unstableingots>],[null,<forestry:oak_stick>,null],[<forestry:oak_stick>,null,null]]);
dc.addTooltip(format.red("Only craftable from Unstable Ingot  and care the Sticks !!\r\nCraft it away from main base!!"));
