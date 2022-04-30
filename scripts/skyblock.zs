#modloaded exnihilocreatio
recipes.remove(<minecraft:stone:3>);
recipes.remove(<exnihilocreatio:block_sieve>);
recipes.remove(<excompressum:heavy_sieve:*>);
recipes.remove(<exnihilocreatio:block_end_cake>);
recipes.remove(<exnihilocreatio:hive>);

recipes.addShaped("Sieve",<exnihilocreatio:block_sieve>,[[<ore:plankWood>,null,<ore:plankWood>],[<ore:plankWood>,<excompressum:chicken_stick>,<ore:plankWood>],[<minecraft:stick>,null,<minecraft:stick>]]);

recipes.remove(<exnihilocreatio:item_mesh:2>);
recipes.addShaped("Iron Mesh",<exnihilocreatio:item_mesh:3>,[[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<exnihilocreatio:item_mesh:1>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>]]);

recipes.addShaped("Chicken Egg",<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}) * 2,[[<exnihilocreatio:item_material:2>,<ore:dustWood>,<exnihilocreatio:item_material:2>],[null,<minecraft:concrete>,null],[<minecraft:apple>,<minecraft:dirt>,<minecraft:apple>]]);

recipes.addShapeless("Grass Seed",<exnihilocreatio:item_material:4>,[<minecraft:wheat_seeds>,<forestry:peat>,<minecraft:coal:1>,<tconstruct:edible:10>,<minecraft:wheat>]);

recipes.addShaped("Notch Apple",<minecraft:golden_apple:1>,[[<minecraft:gold_block>,<minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}),<minecraft:gold_block>],[<minecraft:gold_block>,<minecraft:apple>,<minecraft:gold_block>],[<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>]]);

val Ash=<minecraft:melon_block>;
val bar=<minecraft:iron_bars>;
recipes.addShaped("ExC Iron Mesh",<excompressum:iron_mesh>,[[bar,Ash,bar],[Ash,<tconstruct:materials:10>,Ash],[bar,Ash,bar]]);

//Spore
furnace.addRecipe(<exnihilocreatio:item_material:3>,<harvestcraft:whitemushroomseeditem>,0.0);

recipes.remove(<exnihilocreatio:item_doll:1>);
recipes.addShaped("Enderman",<exnihilocreatio:item_doll:1>,[[<minecraft:dye>,<exnihilocreatio:item_material:5>,<minecraft:dye>]]);

recipes.addShapeless("Emer Nug",<extendedcrafting:material:129>,[<minecraft:dye:0>,<exnihilocreatio:item_material:3>.reuse()]);

//Wart
recipes.addShapeless(<minecraft:nether_wart>* 4, [<minecraft:red_mushroom_block>]);

//Drawer Controller
recipes.replaceAllOccurences(<ore:gemDiamond>,<rftools:noteleport_module>,<storagedrawers:controller>);

recipes.addShapeless("ez Clay",<minecraft:clay_ball>*4,[<minecraft:clay>]);

val cob=<minecraft:cobblestone>;
val fur=<minecraft:furnace>;
recipes.remove(fur);
recipes.addShaped("Furnace",fur, [[cob, cob, cob],[cob, <minecraft:stone>, cob], [cob, cob, cob]]);

fur.addTooltip(format.gold("This is craftable!!"));

//Hearts
recipes.remove(<bhc:green_heart_canister>);
recipes.remove(<bhc:yellow_heart_canister>);
recipes.remove(<bhc:red_heart_canister>);
recipes.addShapeless(<bhc:yellow_heart_canister>, [<bhc:canister>,<bhc:yellow_heart>]);
recipes.addShapeless(<bhc:yellow_heart>, [<forestry:bee_combs>,<harvestcraft:spagettiitem>,<harvestcraft:bakewareitem>]);
recipes.addShapeless(<bhc:red_heart_canister>, [<bhc:canister>,<bhc:red_heart>,<thermalfoundation:wrench>]);