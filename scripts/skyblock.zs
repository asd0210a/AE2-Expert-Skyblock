#modloaded exnihilocreatio
recipes.remove(<minecraft:stone:3>);
recipes.remove(<exnihilocreatio:block_sieve>);
recipes.remove(<excompressum:heavy_sieve:*>);
recipes.remove(<exnihilocreatio:block_end_cake>);

recipes.addShaped("Sieve",<exnihilocreatio:block_sieve>, [[<ore:plankWood>, null, <ore:plankWood>],[<ore:plankWood>, <excompressum:chicken_stick>, <ore:plankWood>], [<minecraft:stick>, null, <minecraft:stick>]]);

recipes.remove(<exnihilocreatio:item_mesh:2>);
recipes.addShaped("Iron Mesh", <exnihilocreatio:item_mesh:3>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <exnihilocreatio:item_mesh:1>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);

recipes.addShaped("Chicken Egg",<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}) * 2, [[<exnihilocreatio:item_material:2>, <ore:dustWood>, <exnihilocreatio:item_material:2>],[null, <minecraft:concrete>, null], [<minecraft:apple>, <minecraft:dirt>, <minecraft:apple>]]);

recipes.addShapeless("Grass Seed",<exnihilocreatio:item_material:4>, [<minecraft:wheat_seeds>,<forestry:peat>,<minecraft:coal:1>,<tconstruct:edible:10>,<minecraft:wheat>]);

recipes.addShaped("Notch Apple",<minecraft:golden_apple:1>, [[<minecraft:gold_block>, <minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}), <minecraft:gold_block>],[<minecraft:gold_block>, <minecraft:apple>, <minecraft:gold_block>], [<minecraft:gold_block>, <minecraft:gold_block>, <minecraft:gold_block>]]);

recipes.addShaped("Ex Compressum Iron Mesh",<excompressum:iron_mesh>, [[<minecraft:iron_bars>, <exnihilocreatio:item_mesh:1>, <minecraft:iron_bars>],[<exnihilocreatio:item_mesh:1>, <tconstruct:materials:10>, <exnihilocreatio:item_mesh:1>], [<minecraft:iron_bars>, <exnihilocreatio:item_mesh:1>, <minecraft:iron_bars>]]);

//Spore
furnace.addRecipe(<exnihilocreatio:item_material:3>, <harvestcraft:whitemushroomseeditem>, 0.0);

//Dolls
recipes.remove(<exnihilocreatio:item_doll:1>);
recipes.addShaped("Enderman",<exnihilocreatio:item_doll:1>, [[<minecraft:dye>, <exnihilocreatio:item_material:5>, <minecraft:dye>]]);

//CDirt, Seed
recipes.remove(<minecraft:dirt:1>);
recipes.addShaped("Coarse Dirt",<minecraft:dirt:1>, [[<minecraft:dirt>, <harvestcraft:applejuiceitem>]]);
furnace.addRecipe(<minecraft:wheat_seeds> * 2, <minecraft:dirt:1>, 0.5);