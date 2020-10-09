import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

JEI.addDescription(<ore:blockMarble>,"Can be obtained by smashing Chiseled Stone, See Astral Sorcery's recipe");
JEI.addDescription(<enderio:item_material>,"Only working with Iron Ore Meat");

<bloodmagic:alchemic_vial>.displayName = "Vial of Mixed Potion";
<ic2:resource>.displayName="Cooled Basalt";
<ic2:resource:11>.addTooltip(format.gold("Psi blockworks can mine it"));
<minecraft:gold_ingot>.addTooltip(format.gold("Craftable from Golden Apple, and Golden Apple can be Crafted without Gold"));

val bl=[
<harvestcraft:market>,
<thermalfoundation:material:23>,
<extrautils2:grocket:1>,
<extrautils2:grocket:2>,
<extrautils2:grocket:3>,
<extrautils2:grocket:4>,
<extrautils2:grocket:5>,
<extrautils2:grocket:6>,
<thermalfoundation:material:22>,
<immersiveengineering:metal:8>,
//Metal tweak
	//Tin 
		<ic2:ingot:6>, 
		<thermalfoundation:material:129>,
			<ic2:dust:17>,
	//Copper
		<forestry:ingot_copper>,
		<ic2:ingot:2>,
		<thermalfoundation:material:128>,
			<immersiveengineering:metal:9>,
			<ic2:dust:4>,
	//Silver
		<immersiveengineering:metal:3>,
		<thermalfoundation:material:130>,
			<ic2:dust:14>,
			<immersiveengineering:metal:12>,
	//Other
		<immersiveengineering:metal:4>,
		<thermalfoundation:material:164>,
		<thermalfoundation:material:161>,
		<thermalfoundation:material:135>,
	//Iron
		<appliedenergistics2:material:49>,
		<actuallyadditions:item_dust>,
		<ic2:dust:8>,
		<immersiveengineering:metal:18>
] as IItemStack[] ;
for n in bl{
rh(n);
}

//ME Cable
var cc=0;
for c in 0 .. 5{
 for c2 in 0 .. 16{
	JEI.hide(itemUtils.getItem("appliedenergistics2:part", c2+cc));
	}
cc+=20;
if(c==3){cc+=420;}
}

//container
val cont=[<forestry:can:*>,<forestry:capsule:*>,<forestry:refractory:*>,<thermalexpansion:florb>.withTag({})] as IItemStack[];
for f in cont{
JEI.hide(f);
}

val spice=["Diamond","Gold","Silver"] as string[];
val bees=[<forestry:bee_drone_ge>,<forestry:bee_princess_ge>,<forestry:bee_queen_ge>] as IItemStack[];

for b in bees{
	for s in spice{
	var uid1 as string="magicbees.species"~s;
	rh(b.withTag({MaxH:20,Mate:{Chromosomes:[{UID1:uid1,UID0:uid1,Slot:0 as byte}]}}));
	}
}
