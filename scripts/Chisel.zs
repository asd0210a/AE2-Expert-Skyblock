#modloaded chisel
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

import mods.chisel.Carving;

val dc=<chisel:chisel_diamond>;
recipes.remove(<chisel:chisel_hitech>);
recipes.remove(<chisel:auto_chisel>);
recipes.remove(<chisel:chisel_iron>);
recipes.remove(dc);
recipes.addShaped(<chisel:chisel_iron>,[[<minecraft:redstone>,<minecraft:cobblestone>,<minecraft:redstone>],[<minecraft:flint>,<minecraft:dye:15>,<minecraft:flint>],[null,<minecraft:stick>,null]]);
recipes.addShaped(dc,[[null,null,<extrautils2:unstableingots>],[null,<forestry:oak_stick>,null],[<forestry:oak_stick>,null,null]]);
dc.addTooltip(format.red("Only craftable from Unstable Ingot  and care the Sticks !!\r\nCraft it away from main base!!"));

function chi(r as IOreDictEntry[],o as IItemStack,i as IItemStack,s as string){
for n in r{
n.remove(o);
}
recipes.addShaped(o,[[i,i,i],[i,i,i],[i,i,i]]);
if(s!=""){
Carving.removeVariation(s,o);
}
}
chi([<ore:stoneAndesite>,<ore:stoneAndesitePolished>],<chisel:andesite1>,<chisel:andesite1:13>,"andesite");
chi([<ore:stoneBasalt>,<ore:stoneBasaltPolished>],<chisel:basalt1>,<chisel:basalt2:3>,"basalt");
chi([],<chisel:lavastone1>,<chisel:lavastone1:13>,"lavastone");
chi([<ore:blockGold>],<chisel:blockgold:6>,<chisel:gold:1>,"");
<chisel:blockgold:6>.displayName="Compressored Block of Gold";
