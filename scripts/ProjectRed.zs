recipes.addShaped("Silicon with stone saw", <projectred-core:resource_item:301>, [[<microblockcbe:saw_stone:*>], [<projectred-core:resource_item:300>]]);

recipes.addShaped("Silicon with iron saw", <projectred-core:resource_item:301>*4, [[<microblockcbe:saw_iron:*>], [<projectred-core:resource_item:300>]]);

recipes.remove(<projectred-expansion:machine2>);
recipes.addShaped("Block Breaker", <projectred-expansion:machine2>, [[<ore:cobblestone>, <minecraft:stone_pickaxe>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:piston>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

val pearl=<projectred-expansion:infused_ender_pearl>;
recipes.addShapeless("Infused Pearl",pearl.withTag({}), [pearl]);
pearl.maxStackSize =8;

//Teleposer
recipes.replaceAllOccurences(<ore:gemDiamond>,<botania:rune:14>,<projectred-expansion:machine2:7>);

recipes.addShaped("Bedrock Brick",<extrautils2:decorativebedrock>, [[pearl, pearl, pearl],[pearl, <thermalfoundation:storage_alloy>, pearl], [pearl, pearl, pearl]]);

val poi=<projectred-core:resource_item:104>;
val pob=<projectred-core:resource_item:342>;
recipes.remove(<projectred-expansion:solar_panel>);
recipes.addShaped("PR Solar Panel",<projectred-expansion:solar_panel>,[[pob,pob,pob],[poi,<immersiveengineering:storage_slab:3>,poi],[<extrautils2:suncrystal>,<extrautils2:suncrystal>,<extrautils2:suncrystal>]]);

recipes.addShaped("Bundle Plate",<projectred-core:resource_item:3>,[[poi,poi,poi],[<projectred-core:resource_item:1>,<projectred-core:resource_item:21>,<projectred-core:resource_item:1>],[<projectred-core:resource_item:20>,<projectred-expansion:electric_screwdriver>.reuse(),<projectred-core:resource_item:20>]]);

recipes.addShaped("Sapphire",<projectred-core:resource_item:201>,[[<microblockcbe:saw_diamond>],[<tconstruct:ore>],[<tconstruct:toolforge>]]);

recipes.addShapeless("Scribing Tool",<thaumcraft:scribing_tools>,[<thaumcraft:scribing_tools:*>,<ore:dyeBlack>]);

recipes.replaceAllOccurences(<ore:ingotIron>,<ore:ingotSilver>,<projectred-core:resource_item:252>);
