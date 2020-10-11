import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
val thau={
<thaumcraft:cinderpearl>:<minecraft:yellow_flower>,
<thaumcraft:vishroom>:<minecraft:red_mushroom>} as IItemStack[IItemStack];
for k,v in thau{Casting.addTableRecipe(k ,v,<liquid:purifying_fluid>,500,true,100);}

val a=<ic2:resource:14>;val b=<projectred-core:resource_item:312>;
recipes.remove(a);
Casting.addBasinRecipe(a,<chisel:blocklead:6>,<fluid:astralsorcery.liquidstarlight>,2400,true,240);

recipes.remove(<ic2:te:26>);
recipes.addShaped("Reactor Port",<ic2:te:26>,[[b,a,b],[a,<extrautils2:redstonelantern>,a],[b,a,b]]);

Casting.addTableRecipe(<immersiveengineering:mold:3>,<ic2:dust:27>,<fluid:concrete>,2000,true,160);

Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <exnihilocreatio:item_material:7>, <liquid:gold>, 288, true,40);

val eio=[<liquid:vibrant_alloy>,<liquid:energetic_alloy>,<liquid:dark_steel>] as ILiquidStack[];
for l in eio{
mods.tconstruct.Alloy.removeRecipe(l);
}