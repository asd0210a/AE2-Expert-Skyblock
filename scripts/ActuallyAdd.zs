import mods.actuallyadditions.MiningLens as miner;
mods.actuallyadditions.BallOfFur.removeReturn(<minecraft:diamond>);

recipes.remove(<actuallyadditions:block_coffee_machine>);
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped("Coffee Maker",<actuallyadditions:block_coffee_machine>, [[null, <thaumcraft:cluster:6>, null],[<immersiveengineering:metal_device0:5>, <immersiveengineering:chemthrower>,<immersiveengineering:metal_device0:5>], [<extendedcrafting:trimmed:4>, <industrialforegoing:water_condensator>, <extendedcrafting:trimmed:4>]]);

miner.removeStoneOre(<ore:osmium>);
miner.addStoneOre(<ore:osmium>,10);