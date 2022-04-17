recipes.remove(<harvestcraft:applejuiceitem>);

recipes.remove(<harvestcraft:presser>);
recipes.addShaped("Presser",<harvestcraft:presser>, [[<minecraft:iron_ingot>, <minecraft:piston>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:trapped_chest>, <minecraft:iron_ingot>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

recipes.remove(<harvestcraft:well>);
recipes.addShaped("Well",<harvestcraft:well>*8, [[<minecraft:stonebrick>, <botania:manaresource:1>, <minecraft:stonebrick>],[<minecraft:stonebrick>, <ore:cobblestone>, <minecraft:stonebrick>], [<minecraft:stonebrick>, <botania:manaresource:2>, <minecraft:stonebrick>]]);

recipes.remove(<harvestcraft:shippingbin>);
recipes.addShaped("Shipping Bin",<harvestcraft:shippingbin>, [[<ore:plankWood>, <minecraft:noteblock>, <ore:plankWood>],[<ore:logWood>, <harvestcraft:seedenergygelitem>, <ore:logWood>], [<ore:plankWood>, null, <ore:plankWood>]]);

recipes.remove(<harvestcraft:cinnamontoastitem>);
recipes.addShapeless("Cinnamon Toast", <harvestcraft:cinnamontoastitem>, [<ore:toolSkillet>, <minecraft:bread>, <ore:foodGroundcinnamon>, <ore:foodButter>, <ore:listAllsugar>,<extendedcrafting:singularity_custom:1>]);
