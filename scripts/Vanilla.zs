import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IItemDefinition;

import crafttweaker.potions.IPotion; 
import crafttweaker.potions.IPotionEffect;

val pot=[
<potion:minecraft:strength>,
<potion:minecraft:regeneration>,
<potion:minecraft:invisibility>
] as IPotion[];

events.onPlayerRespawn(function(e as crafttweaker.event.PlayerRespawnEvent){
    for p in pot{
        p.makePotionEffect(300,2).performEffect(e.player);
        }
});

function po(brew as string, ori as IItemStack, new as IItemStack){
	val arr = [<minecraft:potion>, <minecraft:splash_potion>] as IItemStack[] ;
	for a in arr{
		var pot =a.withTag({Potion: "minecraft:water"}) ;
		brewing.removeRecipe(pot,ori);
	}
}
po("minecraft:weakness",<minecraft:fermented_spider_eye>,<ic2:misc_resource:5>);

