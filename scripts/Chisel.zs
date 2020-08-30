#modloaded chisel
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;


recipes.remove(<chisel:chisel_hitech>);
recipes.remove(<chisel:auto_chisel>);
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [[<minecraft:redstone>, <minecraft:cobblestone>, <minecraft:redstone>],[<minecraft:flint>, <minecraft:dye:15>, <minecraft:flint>], [null, <minecraft:stick>, null]]);