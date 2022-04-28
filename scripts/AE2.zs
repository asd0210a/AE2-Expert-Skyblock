#modloaded appliedenergistics2
import mods.appliedenergistics2.Grinder;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;

global aem as function(int)IItemStack=function (a as int) as IItemStack{
	return itemUtils.getItem("appliedenergistics2:material",a);
};

global ae as function(string)IItemStack=function (a as string) as IItemStack{
	return itemUtils.getItem("appliedenergistics2:"~a);
};

var circuit=["Logic Circuit","Calculation Circuit","Engineering Circuit","Silicon Circuit"] as string[];
var inp=[<minecraft:gold_ingot>,aem(10),<minecraft:dye:4>,aem(5)] as IItemStack[];
val outp=[18,16,17,20] as int[];
val processor=[22,23,24] as int[];

for k in 0 .. 4{
	var out = aem(outp[k]);
	var namePress = aem(21).withTag({InscribeName: circuit[k]}).reuse();
	
	recipes.addShapeless(out,[<ic2:forge_hammer:*>,namePress,inp[k]]);	
	if(k !=3){
		recipes.addShaped(aem(processor[k])*15,[[<immersiveengineering:mold:6>.reuse(),<projectred-core:resource_item:251>,null],[<immersiveengineering:tool>,aem(20),null],[null,out,null]]);
	}
}

//Tooltip NamePress
aem(21).addTooltip(format.red("Won't be consumed after crafting circuits.\nNeed to correspond Press name!!"));

recipes.remove(<appliedenergistics2:part:340>);
recipes.remove(ae("inscriber"));

val cerCh=aem(1);
recipes.remove(ae("quartz_fixture"));
recipes.addShaped("Quartz Fixture",ae("quartz_fixture"),[[cerCh,cerCh,cerCh],[cerCh,<ore:ingotSilver>,cerCh],[cerCh,cerCh,cerCh]]);

val pbl=<appliedenergistics2:paint_ball:24>;
recipes.addShapeless(<minecraft:gold_ingot> * 8,[<minecraft:golden_apple>]);
recipes.addShaped("Golden Apple",<minecraft:golden_apple>,[[pbl,<harvestcraft:saltitem>,pbl],[pbl,<minecraft:apple>,pbl],[pbl,<harvestcraft:saltitem>,pbl]]);

val eds=<extrautils2:decorativesolid:3>;
recipes.remove(ae("charger"));
recipes.addShaped("Charger",ae("charger"),[[eds,ae("material"),eds],[eds,<minecraft:iron_trapdoor>,null],[eds,ae("material"),eds]]);

val cob=<ore:cobblestone>;
recipes.remove(ae("grindstone"));
recipes.addShaped("Grindstone",ae("grindstone"),[[cob,aem(40),cob],[aem(7),cob,aem(7)],[cob,aem(7),cob]]);

//Vibration Chamber
recipes.replaceAllOccurences(<minecraft:furnace>,<thaumcraft:smelter_basic>,ae("vibration_chamber"));

//ME Controller
recipes.replaceAllOccurences(ae("smooth_sky_stone_block"),<bloodmagic:ritual_stone>,ae("controller"));

//Crafting Terminal
recipes.replaceAllOccurences(<ore:workbench>,<botania:autocraftinghalo>,<appliedenergistics2:part:360>);

recipes.remove(aem(35));
recipes.addShaped("1k Storage Component",aem(35),[[<botania:manaresource:6>,<minecraft:iron_ingot>,<botania:manaresource:6>],[<minecraft:iron_ingot>,ae("quartz_block"),<minecraft:iron_ingot>],[<botania:manaresource:6>,<minecraft:iron_ingot>,<botania:manaresource:6>]]);

//Condenser
recipes.replaceAllOccurences(aem(8),<ore:dyePurple>,ae("condenser"));

//Grinder.addRecipe(output, i,int turns,....)
val her=<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "herba"}]});
Grinder.removeRecipe(aem(45));
Grinder.addRecipe(her,<minecraft:grass>,1,her,1,her,1);
Grinder.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1,key: "machina"}]}),<thermalfoundation:material:24>,1);
Grinder.addRecipe(aem(5)*8,ae("quartz_block"),1);