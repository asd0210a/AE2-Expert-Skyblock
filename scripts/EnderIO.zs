recipes.remove(<enderio:item_item_conduit>);
recipes.remove(<enderio:item_material>);
recipes.remove(<enderio:item_material:1>);
val silv=<ore:ingotSilver>;
val stlrod=<immersiveengineering:material:2>;
mods.forestry.Carpenter.addRecipe(<enderio:item_material>,[[silv,stlrod,silv],[stlrod,<extendedcrafting:storage>,stlrod],[silv,stlrod,silv]],60,<liquid:if.ore_fluid_raw>*1000,<teslacorelib:machine_case>);



