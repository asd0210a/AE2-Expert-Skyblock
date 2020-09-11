import crafttweaker.item.IItemStack;

var generators = [
//AA
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_oil_generator>,
	<actuallyadditions:block_furnace_solar>,
//Btn
	<botania:rfgenerator>,
//ExU
	<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
	<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
//Forestry
	<forestry:engine_peat>,
	<forestry:engine_biogas>,
	<forestry:engine_clockwork>,
//IC2
	<ic2:te:3>,
	<ic2:te:4>,
	<ic2:te:14>,
	<ic2:te:19>,
	<ic2:te:12>,
	<ic2:te:8>,
//IE
	<immersiveengineering:metal_device1:2>,
	<immersiveengineering:metal_device1:3>,
//IF
	<industrialforegoing:petrified_fuel_generator>,
	<industrialforegoing:biofuel_generator>,
	<industrialforegoing:protein_generator>,
	<industrialforegoing:pitiful_fuel_generator>,
//TE
	<thermalfoundation:material:514>
	
] as IItemStack[];
for g in generators{
recipes.remove(g);
}

//Kinetic Dynamo
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<thermalfoundation:material:160>, <immersiveengineering:connector>, <thermalfoundation:material:160>],[<tconstruct:large_plate>, <draconicevolution:draconic_core>, <tconstruct:large_plate>], [<bloodmagic:blood_rune>, <thermalfoundation:material:160>, <bloodmagic:blood_rune>]]);