#debug
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IItemDefinition;
function po(brew as string, ori as IItemStack, new as IItemStack){
val arr = [<minecraft:potion>, <minecraft:splash_potion>] as IItemStack[] ;
for a in arr{
	var pot =a.withTag({Potion: "minecraft:water"}) ;
	brewing.removeRecipe(pot,ori);
	//brewing.addBrew(pot, new, a.withTag({Potion: brew}));
	}
//brewing.addBrew(arr[0].withTag({Potion: brew}), ori ,arr[1].withTag({Potion: brew}));
}
po("minecraft:weakness",<minecraft:fermented_spider_eye>,<ic2:misc_resource:5>);

recipes.addShapeless(<minecraft:nether_wart>* 4, [<minecraft:red_mushroom_block>]);

//Drawer Controller
recipes.replaceAllOccurences(<ore:gemDiamond>,<rftools:noteleport_module>,<storagedrawers:controller>);

recipes.addShapeless("ez Clay",<minecraft:clay_ball>*4,[<minecraft:clay>]);