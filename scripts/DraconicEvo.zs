recipes.remove(<draconicevolution:wyvern_core>);

recipes.remove(<draconicevolution:particle_generator:2>);

recipes.replaceAllOccurences(<ore:blockIron>,<bloodmagic:ritual_controller:1>,<draconicevolution:crafting_injector>);
recipes.replaceAllOccurences(<ore:gemDiamond>,<extrautils2:opinium:1>,<draconicevolution:fusion_crafting_core>);
recipes.replaceAllOccurences(<minecraft:iron_block>,<immersiveengineering:shader>.withTag({shader_name: "Rosequartz"}),<extrautils2:opinium:1>);

val core1=<draconicevolution:draconic_core>; 

//
val gb=<minecraft:gold_block>; //Gold Block
val ingot=<draconicevolution:draconium_ingot>; //Draconium Ingot
recipes.remove(core1);
recipes.addShaped("Draconic Core",core1, [[ingot, gb, ingot],[gb, <ic2:dust:5>, gb], [ingot, gb, ingot]]);

//
recipes.remove(<draconicevolution:wyvern_energy_core>);
recipes.addShaped("Wyvern Energy Core",<draconicevolution:wyvern_energy_core>, [[<botania:manaresource:4>, core1, <botania:manaresource:4>],[core1, <botania:rune:8>, core1], [<botania:manaresource:4>, core1, <botania:manaresource:4>]]);

