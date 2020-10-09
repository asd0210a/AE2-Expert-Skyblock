
#priority 1000
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;

val ingot=<modularmachinery:itemmodularium>;
val block=<modularmachinery:blockcasing>;
recipes.addShaped("Modular Controller",<modularmachinery:blockcontroller>,[[null,ingot,null],[<ore:blockRedstone>,block,<ore:blockRedstone>],[<ore:ingotGold>,<projectred-transportation:routing_chip:3>,<ore:ingotGold>]]);

val mb=<microblockcbe:microblock:2>.withTag({mat: "minecraft:glass"});
recipes.addShaped("Machine Vent",<modularmachinery:blockcasing:1>,[[ingot,mb,ingot],[mb,<ic2:reactor_heat_vent>,mb],[ingot,mb,ingot]]);

recipes.addShaped("Normal Item Output",<modularmachinery:blockoutputbus:2>,[[<minecraft:chest>,ingot,<minecraft:chest>],[ingot,<modularmachinery:blockoutputbus:1>,ingot],[null,<minecraft:hopper>,null]]);

recipes.addShaped("Reinforced Item Output",<modularmachinery:blockoutputbus:3>,[[<minecraft:chest>,ingot,<minecraft:chest>],[ingot,<modularmachinery:blockoutputbus:2>,ingot],[null,<minecraft:hopper>,null]]);

recipes.addShaped("Auto Chisel",<chisel:auto_chisel>,[[block,<modularmachinery:blockcontroller>,block],[<modularmachinery:blockoutputbus:6>,<chisel:chisel_hitech:*>.reuse(),<modularmachinery:blockoutputbus:6>],[block,<modularmachinery:blockoutputbus:6>,block]]);

val cokeb=<immersiveengineering:stone_decoration>;
recipes.addShaped("Coke Kiln Blueprint",<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:cokekiln"}),[[<immersiveengineering:tool>,cokeb,cokeb],[cokeb,<immersiveengineering:blueprint>,cokeb],[cokeb,<immersiveengineering:metal_decoration2:4>,cokeb]]);

//machine int
function itemIO(recipeName as string,machine as string,inp as IItemStack,outputArray as IItemStack[],chance as float[],time as int){
	var mc=mods.modularmachinery.RecipeBuilder.newBuilder(recipeName,machine,time);
	for o in 0 to chance.length{
		mc.addItemOutput(outputArray[o]).setChance(chance[o]);
	}
	mc.addItemInput(inp).build();
}
//Sieve
itemIO("IronSieve","sieve",<minecraft:sand>,[<minecraft:iron_ingot>,<appliedenergistics2:material>,<minecraft:redstone>,<minecraft:gunpowder>,<minecraft:glowstone_dust>,<minecraft:blaze_powder>,<minecraft:quartz>,<minecraft:dye:4>],[ 1,1,1,0.10,1,1,1,0.45],5);
itemIO("FishSieve","sieve",<chisel:waterstone>,[<minecraft:fish>],[0.7],20);
