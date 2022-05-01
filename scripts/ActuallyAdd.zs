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
//---------------------------------------------------//
//-----start---------Atomic Reconstructor-------------//
	//default crystal remove
	AR.removeRecipe(<actuallyadditions:item_crystal:*>);
	AR.removeRecipe(<actuallyadditions:block_crystal:*>);

	//Greenhouse Glass
	recipes.remove(<actuallyadditions:block_greenhouse_glass>);
	AR.addRecipe(<actuallyadditions:block_greenhouse_glass>,<minecraft:glass>,5000);
//-----end---------Atomic Reconstructor-------------//
//---------------------------------------------------//


//Coal Generator
val ic2bat=<ic2:te:72>;
recipes.addShaped("Coal Generator", <actuallyadditions:block_coal_generator>, [[<minecraft:coal_block>, <forge:bucketfilled>.withTag({FluidName: "coal", Amount: 1000}), <minecraft:coal_block>],[<gendustry:power_module>, <actuallyadditions:block_misc:9>, <gendustry:power_module>], [<mekanism:basicblock:2>, ic2bat.withTag({energy: 40000.0}), <mekanism:basicblock:2>]]);
ic2bat.addTooltip( format.gold("You have to it full charged to craft Coal Generator"));

//Display Stand
recipes.replaceAllOccurences(<actuallyadditions:item_misc:8>, <immersiveengineering:connector:8>, <actuallyadditions:block_display_stand>);

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);
mods.thaumcraft.Infusion.registerRecipe("AA Empowerer", "INFUSION", <actuallyadditions:block_empowerer>, 20,
[<aspect:fabrico>*25, <aspect:permutatio>*25,<aspect:desiderium>*25,<aspect:tempus>*25, <aspect:potentia>*25],
<actuallyadditions:block_display_stand>,[<thaumcraft:vis_battery>,<mekanism:energycube>,<thaumictinkerer:transvector_dislocator>,<thaumcraft:stabilizer>,<actuallyadditions:block_display_stand>,<thaumcraft:mirror>,<immersiveengineering:revolver>,<bloodmagic:master_routing_node>]);

