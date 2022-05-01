//Dragon Module remove
recipes.remove(<deepmoblearning:data_model_dragon>);

mods.botania.ManaInfusion.addConjuration(<deepmoblearning:glitch_heart>,<deepmoblearning:glitch_heart>,1000);

val ob=<minecraft:obsidian>;
//Soot Covered
recipes.remove(<deepmoblearning:soot_covered_plate>);
recipes.addShapeless("Soot Plate",<deepmoblearning:soot_covered_plate>,[ob,ob,<minecraft:redstone>,<draconicevolution:draconic_core>]);

//Deep Learner
recipes.remove(<deepmoblearning:deep_learner>);
recipes.addShaped("Deep Learner", <deepmoblearning:deep_learner>, [[ob, <bloodmagic:dagger_of_sacrifice>, ob],[<minecraft:glass_pane>, <rftools:regeneration_module>, <minecraft:glass_pane>], [ob, <bloodmagic:incense_altar>, ob]]);