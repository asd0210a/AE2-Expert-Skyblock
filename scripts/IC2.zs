recipes.remove(<ic2:scaffold:2>);
val bi=<ore:blockIron>;
bi.add(<ic2:scaffold:2>);

recipes.remove(<ore:gearStone>);
recipes.addShaped("Stone Gear ",<exnihilocreatio:item_material:7>,[[null,<ic2:resource:11>,null],[<ic2:resource:11>,<appliedenergistics2:material:40>,<ic2:resource:11>],[null,<ic2:resource:11>,null]]);

recipes.addShapeless(<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), [<extendedcrafting:material:2>,<ic2:cable>]);
recipes.addShapeless(<ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}), [<extendedcrafting:material:2>,<ic2:cable:2>]);

recipes.replaceAllOccurences(<ic2:te:3>,<ic2:resource:12>,<ic2:te:9>);
<ic2:resource>.displayName="Cooled Basalt";
<ic2:resource:11>.hardness = 5.0;
//Stone Dust
mods.immersiveengineering.CokeOven.addRecipe(<ic2:dust:15>, 1,<minecraft:cobblestone> , 200);
