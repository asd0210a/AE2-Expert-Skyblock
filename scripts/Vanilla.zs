#debug
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IItemDefinition;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.event.ILivingEvent;
import crafttweaker.damage.IDamageSource;

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

recipes.addShapeless(<minecraft:nether_wart>* 4, [<minecraft:red_mushroom_block>]);

//Drawer Controller
recipes.replaceAllOccurences(<ore:gemDiamond>,<rftools:noteleport_module>,<storagedrawers:controller>);

recipes.addShapeless("ez Clay",<minecraft:clay_ball>*4,[<minecraft:clay>]);

val cob=<minecraft:cobblestone>;
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[cob, cob, cob],[cob, <minecraft:stone>, cob], [cob, cob, cob]]);
<minecraft:furnace>.addTooltip(format.gold("This is craftable!!"));

//Dragon killer
/*
events.onEntityLivingDeath( function (ent as crafttweaker.event.EntityLivingDeathEvent){
ent.setFireDamage();
});
*/