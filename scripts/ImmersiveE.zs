#modloaded immersiveengineering
#priority 5
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

global ie as function(string,int)IItemStack=function (a as string,b as int) as IItemStack{return itemUtils.getItem("immersiveengineering:"+a,b);};
val Fep=<ore:plateIron>;

recipes.remove(ie("metal",39));

//Scribing Tools
recipes.remove(<thaumcraft:scribing_tools>);
Blueprint.addRecipe("components",<thaumcraft:scribing_tools>,[<minecraft:feather>,<botania:manabottle>,<ore:dyeBlack>]);
recipes.addShapeless(<thaumcraft:scribing_tools>,[<minecraft:feather>,<botania:manabottle>,<ore:dyeBlack>,<immersiveengineering:blueprint>.withTag({blueprint: "components"}).reuse(),<immersiveengineering:wooden_device0:2>]) ;

//Steel Ingot
BlastFurnace.removeRecipe(ie("metal",8));
BlastFurnace.removeRecipe(ie("storage",8));
ArcFurnace.removeRecipe(ie("metal",8));
furnace.remove(<ore:ingotSteel>);

//Coke
CokeOven.removeRecipe(ie("material",6));
CokeOven.removeRecipe(ie("stone_decoration",3));
CokeOven.removeRecipe(ie("metal",39));
CokeOven.addRecipe(ie("metal",0),1,<minecraft:iron_ingot>,100);

//Molds (Steel->Iron)
val mold= ie("mold",0).definition;

for m in mold.subItems{
	Blueprint.removeRecipe(m);
	Blueprint.addRecipe("molds",m,[Fep,Fep,Fep,Fep,Fep,ie("tool",1)]);
	//recipes.addShapeless(m,[Fep,Fep,Fep,Fep,Fep, ie("tool",1) ,<immersiveengineering:blueprint>.withTag({blueprint: "molds"}).reuse(),<immersiveengineering:wooden_device0:2>, ie("connector", i ) ] );
}
recipes.replaceAllOccurences(<ore:plateSteel>,Fep,<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));

Blueprint.removeRecipe(ie("mold",1));
Blueprint.removeRecipe(ie("mold",3));


ie("mold",3).displayName="Blank Metal Mold";

/////////
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

//Cable Connector
recipes.remove(<immersiveengineering:connector:6>);
recipes.addShapeless(<immersiveengineering:connector:6>,[<appliedenergistics2:part:56>,<minecraft:golden_chestplate>]);

//Diamond Gear
recipes.remove(<thermalfoundation:material:26>);
AlloySmelter.addRecipe(<thermalfoundation:material:26>,<actuallyadditions:item_dust:2>*2,<appliedenergistics2:material:40>, 400);

var c=<enderio:item_alloy_ingot:2>; val e=<extrautils2:flattransfernode>;
recipes.remove(ie("metal_decoration0",3));
recipes.addShaped("Redstone eng",ie("metal_decoration0",3),[[c,e,c],[e,<draconicevolution:energy_infuser>,e],[c,e,c]]);

MetalPress.removeRecipe(ie("bullet",0));
MetalPress.addRecipe(ie("mold",1),ie("mold",3),<thermalfoundation:material:26>,16000);

//Blast Brick
recipes.remove(ie("stone_decoration",2));

recipes.remove(ie("stone_decoration",0));
recipes.addShaped("Coke Brick", ie("stone_decoration",0)*30, [[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]]);


//Raditor Block
recipes.remove(ie("metal_decoration0",7));

//Water Wheel
recipes.replaceAllOccurences(<ore:ingotSteel>,<exnihilocreatio:block_waterwheel>,ie("wooden_device1",0));

recipes.replaceAllOccurences(<minecraft:iron_ingot>,<ore:ingotElectrum>,ie("connector",3));
recipes.replaceAllOccurences(<minecraft:iron_ingot>,<ore:ingotElectrum>,ie("connector",2));
recipes.replaceAllOccurences(<ore:ingotElectrum>,<draconicevolution:draconium_block>,ie("metal_decoration0",5));

//Steel Rod
recipes.remove(<immersiveengineering:material:2>);

// Concrete
recipes.remove(<immersiveengineering:stone_decoration:5>);

//Jump Cushion
recipes.remove(<immersiveengineering:cloth_device>);

//Strip Curtion
recipes.remove(<immersiveengineering:cloth_device:2>);