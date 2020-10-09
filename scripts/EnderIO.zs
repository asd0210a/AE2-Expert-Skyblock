recipes.remove(<enderio:item_item_conduit>);
recipes.remove(<enderio:item_liquid_conduit>);
recipes.remove(<enderio:item_material>);
recipes.remove(<enderio:item_material:1>);

recipes.addShaped(<enderio:block_experience_obelisk>, [[null, <bloodmagic:experience_tome>, null],[<extrautils2:ingredients:11>, <appliedenergistics2:part:56>, <appliedenergistics2:part:302>], [<extrautils2:ingredients:11>, <draconicevolution:dislocator_pedestal>, null]]);

val silv=<ore:ingotSilver>;
val stlrod=<immersiveengineering:material:2>;
mods.forestry.Carpenter.addRecipe(<enderio:item_material>,[[silv,stlrod,silv],[stlrod,<extendedcrafting:storage>,stlrod],[silv,stlrod,silv]],60,<liquid:if.ore_fluid_raw>.withTag({Ore:"oreIron"})*1000,<teslacorelib:machine_case>);
