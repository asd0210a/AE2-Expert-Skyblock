import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

rh(<rftools:syringe>.withTag({}));

val dim =[<rftoolsdim:dimension_builder>,<rftoolsdim:dimension_editor>,<rftools:machine_frame>] as IItemStack[];
for d in dim{recipes.remove(d);}