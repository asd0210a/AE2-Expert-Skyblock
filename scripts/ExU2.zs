import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry as machR;

recipes.remove(<extrautils2:passivegenerator:2>);
recipes.remove(<extrautils2:passivegenerator:4>);
recipes.remove(<extrautils2:passivegenerator:7>);
recipes.remove(<extrautils2:grocket>);
recipes.remove(<extrautils2:pipe>);
recipes.remove(<extrautils2:machine>);
recipes.remove(<extrautils2:teleporter:1>);

recipes.addShaped("Transfer node_items",<extrautils2:grocket>*4,[[<ore:dustRedstone>,<appliedenergistics2:part:*>,<ore:dustRedstone>],[<bloodmagic:blood_rune>,<ore:chestWood>,<bloodmagic:blood_rune>]]);

val st=<minecraft:stone>;
recipes.addShaped("Lava Mill",<extrautils2:passivegenerator:2>,[[st,st,st],[st,<extrautils2:ingredients>,st],[st,<ore:ingotGold>,st]]);

<extrautils2:decorativebedrock>.hardness=3.0;

recipes.remove(<extrautils2:goldenlasso:1>);
recipes.addShapeless("Cursed Lasso",<extrautils2:goldenlasso:1>,[<extrautils2:goldenlasso>,<extrautils2:ingredients:10>,<draconicevolution:crystal_binder>]);

val ironDrum=<extrautils2:drum:1>;
recipes.addShaped("Reinforce Drum",<extrautils2:drum:2>, [[ironDrum, <minecraft:light_weighted_pressure_plate>, ironDrum],[ironDrum, <appliedenergistics2:material:52>, ironDrum], [ironDrum, <minecraft:light_weighted_pressure_plate>, ironDrum]]);

machR.getMachine("crafttweaker:lavaconstructor").addRecipe({inp:<ore:cobblestone>},{lava:<fluid:lava>*1000},0,20);
game.setLocalization("machine.crafttweaker:lavaconstructor", "Lava Constructor");
val lava=<minecraft:lava_bucket>;
val gl=<minecraft:stained_glass:15>;
recipes.addShaped("lc",<extrautils2:machine>.withTag({Type: "crafttweaker:lavaconstructor"}),[[lava,lava,lava],[gl,<enderio:block_tank:0>,gl],[lava,<ore:blockIron>,lava]]);