#debug
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IItemDefinition;
function po(brew as string, ori as IItemStack, new as IItemStack){
val arr = [<minecraft:potion>, <minecraft:splash_potion>] as IItemStack[] ;
for a in arr{
	var pot =a.withTag({Potion: "minecraft:water"}) ;
	brewing.removeRecipe(pot, ori);
	brewing.addBrew(pot, new, a.withTag({Potion: brew}));
	}
brewing.addBrew(arr[0].withTag({Potion: brew}), ori ,arr[1].withTag({Potion: brew}));
}
po("minecraft:weakness", <minecraft:fermented_spider_eye>, <ic2:misc_resource:5>);
