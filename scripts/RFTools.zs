import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

rh(<rftools:syringe>.withTag({}));

val dimBlock =[<rftoolsdim:dimension_builder>,<rftoolsdim:dimension_editor>,<rftools:machine_frame>] as IItemStack[];
for d in dimBlock{recipes.remove(d);}

//AS Paper
val paper=<minecraft:paper>;
val ASpaper=<astralsorcery:itemcraftingcomponent:5>;
recipes.remove(ASpaper);
recipes.addShapeless("astralsorcery:shaped/cc_parchment", ASpaper * 4, [null, paper, null, paper, <ore:gemAquamarine>, paper, null, paper, null]);

//EDT
val me1k=<appliedenergistics2:material:35>;
recipes.remove(<rftoolsdim:empty_dimension_tab>);
recipes.addShaped("Empty Dimension Tab", <rftoolsdim:empty_dimension_tab>, [[ASpaper, me1k, ASpaper], [me1k, <astralsorcery:itemcoloredlens:6>, me1k], [ASpaper, me1k, ASpaper]]);
