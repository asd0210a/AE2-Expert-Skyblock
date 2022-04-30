import crafttweaker.item.IItemStack;

import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry as machR;
import mods.extrautils2.Resonator;

val rn=[<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:7>,<extrautils2:grocket>,<extrautils2:pipe>,<extrautils2:machine>,<extrautils2:teleporter:1>] as IItemStack[];
for r in rn{recipes.remove(r);}

recipes.addShaped("Transfer node_items",<extrautils2:grocket>,[[<ore:dustRedstone>,<appliedenergistics2:part:462>,<ore:dustRedstone>],[<immersiveengineering:stone_device:5>,<ore:chestWood>,<immersiveengineering:stone_device:5>]]);

val st=<minecraft:stone>;
recipes.addShaped("Lava Mill",<extrautils2:passivegenerator:2>,[[st,st,st],[st,<extrautils2:ingredients>,st],[st,<ore:ingotGold>,st]]);

<extrautils2:decorativebedrock>.hardness=3.0;

recipes.remove(<extrautils2:goldenlasso:1>);
recipes.addShapeless("Cursed Lasso",<extrautils2:goldenlasso:1>,[<extrautils2:goldenlasso>,<extrautils2:ingredients:10>,<draconicevolution:crystal_binder>]);

val ironDrum=<extrautils2:drum:1>;
recipes.addShaped("Reinforce Drum",<extrautils2:drum:2>, [[ironDrum, <minecraft:light_weighted_pressure_plate>, ironDrum],[ironDrum, <appliedenergistics2:material:52>, ironDrum], [ironDrum, <minecraft:light_weighted_pressure_plate>, ironDrum]]);

machR.getMachine("crafttweaker:lavaconstructor").addRecipe({inp:<ore:cobblestone>},{lava:<fluid:lava>*4000},0,40);
game.setLocalization("machine.crafttweaker:lavaconstructor", "Lava Constructor");
val lava=<minecraft:lava_bucket>;
val gl=<minecraft:stained_glass:15>;
recipes.addShaped("lc",<extrautils2:machine>.withTag({Type: "crafttweaker:lavaconstructor"}),[[lava,lava,lava],[gl,<enderio:block_tank:0>,gl],[lava,<ore:blockIron>,lava]]);

//Redstone Root (Botania)
recipes.remove(<botania:manaresource:6>);
Resonator.add(<botania:manaresource:6>,<minecraft:redstone>,100);

//Flat Transfer Node
recipes.remove(<extrautils2:flattransfernode>);
mods.immersiveengineering.MetalPress.addRecipe(<extrautils2:flattransfernode>, <extrautils2:grocket>, <immersiveengineering:mold>, 1000, 2);