#modloaded immersiveengineering
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

//Scribing Tools
recipes.remove(<thaumcraft:scribing_tools>);
Blueprint.addRecipe("components",<thaumcraft:scribing_tools>,[<minecraft:feather>,<botania:manabottle>,<ore:dyeBlack>]);

//Steel Ingot
BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
furnace.remove(<ore:ingotSteel>);

//Coke
CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
CokeOven.addRecipe(<immersiveengineering:metal>,1,<minecraft:iron_ingot>,100);

//Molds (Steel->Iron)
val mold=<immersiveengineering:mold>.definition;
var i=0 as int;
for m in mold.subItems{
Blueprint.removeRecipe(m);
Blueprint.addRecipe("molds",m,[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>,<ore:plateIron>,<ore:plateIron>,<immersiveengineering:tool:1>]);
i+=1;
}

Blueprint.removeRecipe(<immersiveengineering:mold:1>);
Blueprint.removeRecipe(<immersiveengineering:mold:3>);
<immersiveengineering:mold:3>.displayName="Blank Metal Mold";

AlloySmelter.addRecipe(<thermalfoundation:coin:72>,<thermalfoundation:material:72>,<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}),1200);

function cru(n as IItemStack){
recipes.remove(n);
Crusher.removeRecipe(n);
furnace.remove(n);
mods.mekanism.crusher.removeRecipe(n);
ArcFurnace.removeRecipe(n);
mods.mekanism.enrichment.removeRecipe(<*>,n);
}
//Crushed Diamond
cru(<ic2:dust:5>);

//Diamond Gear
recipes.remove(<thermalfoundation:material:26>);
AlloySmelter.addRecipe(<thermalfoundation:material:26>,<actuallyadditions:item_dust:2>*2,<appliedenergistics2:material:40>, 400);

val c=<enderio:item_alloy_ingot:2>;val e=<extrautils2:flattransfernode>;
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped("Redstone eng",<immersiveengineering:metal_decoration0:3>,[[c,e,c],[e,<draconicevolution:energy_infuser>,e],[c,e,c]]);

MetalPress.removeRecipe(<immersiveengineering:bullet>);
MetalPress.addRecipe(<immersiveengineering:mold:1>,<immersiveengineering:mold:3>,<thermalfoundation:material:26>,16000);

//Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:2>);

//Raditor Block
recipes.remove(<immersiveengineering:metal_decoration0:7>);

//Water Wheel
recipes.replaceAllOccurences(<ore:ingotSteel>,<exnihilocreatio:block_waterwheel>,<immersiveengineering:wooden_device1>);
recipes.replaceAllOccurences(<minecraft:iron_ingot>,<ore:ingotElectrum>,<immersiveengineering:connector:3>);
recipes.replaceAllOccurences(<minecraft:iron_ingot>,<ore:ingotElectrum>,<immersiveengineering:connector:2>);
recipes.replaceAllOccurences(<ore:ingotElectrum>,<draconicevolution:draconium_block>,<immersiveengineering:metal_decoration0:5>);