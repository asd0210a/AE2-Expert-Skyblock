import mods.actuallyadditions.Empowerer;
import mods.actuallyadditions.AtomicReconstructor as AR;

mods.actuallyadditions.BallOfFur.removeReturn(<minecraft:diamond>);

recipes.remove(<actuallyadditions:block_coffee_machine>);
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped("Coffee Maker",<actuallyadditions:block_coffee_machine>, [[null, <thaumcraft:cluster:6>, null],[<thaumcraft:smelter_aux>, <immersiveengineering:chemthrower>,<thaumcraft:smelter_aux>], [<extendedcrafting:trimmed:4>, <industrialforegoing:water_condensator>, <extendedcrafting:trimmed:4>]]);

//default Empowered items remove
val empowerItems=itemUtils.getItemsByRegexRegistryName(".*_empowered");
for e in empowerItems{
	Empowerer.removeRecipe(e);
}
//default crystal remove
AR.removeRecipe(<actuallyadditions:item_crystal:*>);
AR.removeRecipe(<actuallyadditions:block_crystal:*>);

//Coal Generator
recipes.addShaped(<actuallyadditions:block_coal_generator>, [[<minecraft:coal_block>, <forge:bucketfilled>, <minecraft:coal_block>],[<immersiveengineering:metal_device0:2>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal_device0:2>], [<mekanism:basicblock:2>, <gendustry:power_module>, <mekanism:basicblock:2>]]);


