recipes.remove(<extrautils2:passivegenerator:2>);
recipes.remove(<extrautils2:passivegenerator:4>);
recipes.remove(<extrautils2:passivegenerator:7>);
recipes.remove(<extrautils2:grocket>);
recipes.remove(<extrautils2:pipe>);
recipes.addShaped("Transfer node_items",<extrautils2:grocket>*4,[[<ore:dustRedstone>,<appliedenergistics2:part:*>,<ore:dustRedstone>],[<bloodmagic:blood_rune>,<ore:chestWood>,<bloodmagic:blood_rune>]]);
recipes.addShaped("Lava Mill",<extrautils2:passivegenerator:2>,[[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>],[<minecraft:stone>,<extrautils2:ingredients>,<minecraft:stone>],[<minecraft:stone>,<ore:ingotGold>,<minecraft:stone>]]);
val bedrock= <extrautils2:decorativebedrock>;
bedrock.hardness = 3.0;

recipes.remove(<extrautils2:goldenlasso:1>);
recipes.addShapeless("Cursed Lasso",<extrautils2:goldenlasso:1>,[<extrautils2:goldenlasso>,<extrautils2:ingredients:10>,<draconicevolution:crystal_binder>]);

