recipes.remove(<enderio:item_item_conduit>);

recipes.remove(<enderio:item_material>);
recipes.remove(<enderio:item_material:1>);

recipes.addShaped(<enderio:block_experience_obelisk>, [[null, <bloodmagic:experience_tome>, null],[<extrautils2:ingredients:11>, <appliedenergistics2:part:56>, <appliedenergistics2:part:302>], [<extrautils2:ingredients:11>, <draconicevolution:dislocator_pedestal>, null]]);

val silv=<ore:ingotSilver>;
val stlrod=<immersiveengineering:material:2>;
mods.forestry.Carpenter.addRecipe(<enderio:item_material>,[[silv,stlrod,silv],[stlrod,<extendedcrafting:storage>,stlrod],[silv,stlrod,silv]],60,<liquid:if.ore_fluid_raw>.withTag({Ore:"oreIron"})*1000,<teslacorelib:machine_case>);

//Fluid Conduit
val f= <extrautils2:flattransfernode> ; //Transfer Node
val t1= <enderio:item_liquid_conduit>;
val t2= <enderio:item_liquid_conduit:1>;
val t3= <enderio:item_liquid_conduit:2>;
recipes.remove(t1);
recipes.remove(t2);
recipes.remove(t3);

recipes.addShaped("Basic FC", t1 * 4, [[f, f, f],[<botania:hourglass>, <aeadditions:certustank>.withTag({Fluid: {FluidName: "water", Amount: 4000}}), <botania:hourglass>], [f, f, f]]);
recipes.addShaped("FC Tier2", t2,[[t1,t1,t1],[t1,<bloodmagic:blood_tank:4>,t1],[t1,t1,t1]]);
recipes.addShaped("FC Tier3", t3*2,[[t2,t2,t2],[t2,<industrialforegoing:black_hole_tank>,t2],[t2,t2,t2]]);

//Energy Conduit
val e1=<enderio:item_power_conduit>;
val e2=<enderio:item_power_conduit:1>;
val e3=<enderio:item_power_conduit:2>;
recipes.remove(e1);
recipes.remove(e2);
recipes.remove(e3);

recipes.addShaped("Basic EC",e1*4, [[f,f,f],[<projectred-core:resource_item:104>,<thaumcraft:vis_generator>,<projectred-core:resource_item:104>],[f,f,f]]);
recipes.addShaped("EC Tier2",e2,[ [e1,e1,e1],[e1,<draconicevolution:energy_infuser>,e1],[e1,e1,e1]]);
recipes.addShaped("EC Tier3",e3,[ [e2,e2,e2],[e2,<actuallyadditions:block_coal_generator>,e1],[e2,e2,e2]]);

//Data Conduit
recipes.remove(<enderio:item_data_conduit>);
recipes.addShaped("Data Conduit",<enderio:item_data_conduit>, [[t3, t3, t3],[<deepmoblearning:infused_ingot_block>, <forestry:database>, <deepmoblearning:infused_ingot_block>], [e3, e3, e3]]);

//Black Hole Tank
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.addShaped("Black Hole Tank",<industrialforegoing:black_hole_tank>, [[<mekanism:plasticblock:15>, <mekanism:plasticblock:15>, <mekanism:plasticblock:15>],[<enderio:block_reservoir>, <botania:thirdeye>, <enderio:block_reservoir>], [<bloodmagic:blood_tank:4>, <teslacorelib:machine_case>, <bloodmagic:blood_tank:4>]]);