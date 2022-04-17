recipes.remove(<industrialforegoing:item_splitter>);
recipes.addShaped("Item Splitter",<industrialforegoing:item_splitter>, [[<minecraft:iron_block>, <actuallyadditions:item_filter>, <minecraft:iron_block>],[<minecraft:hopper>, <bloodmagic:base_item_filter>, <minecraft:hopper>], [<thaumcraft:filter>, <projectred-expansion:machine2:3>, <thaumcraft:filter>]]);

recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped("Laser Base",<industrialforegoing:laser_base>,[[<industrialforegoing:plastic>,<bloodmagic:activation_crystal>,<industrialforegoing:plastic>],[<bloodmagic:cutting_fluid:1>,<industrialforegoing:energy_field_addon>.withTag({Energy: 100000}),<bloodmagic:cutting_fluid:1>],[<ore:gearDiamond>,<teslacorelib:machine_case>,<ore:gearDiamond>]]);

//Laser Drill
recipes.replaceAllOccurences(<industrialforegoing:laser_lens>,<industrialforegoing:laser_lens_inverted>,<industrialforegoing:laser_drill>);

recipes.replaceAllOccurences(<ore:gearDiamond>,<forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}),<industrialforegoing:ore_washer>);

recipes.replaceAllOccurences(<ore:gearDiamond>,<appliedenergistics2:dense_energy_cell>,<industrialforegoing:energy_field_provider>);
