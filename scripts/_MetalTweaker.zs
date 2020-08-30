#priority 5000
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry ;
import crafttweaker.item.IItemDefinition ;
import crafttweaker.item.IItemStack ;
import crafttweaker.item.IIngredient;

//Copper
furnace.remove(<ore:ingotCopper>);

furnace.remove(<ic2:ingot:6>);
furnace.remove(<thermalfoundation:material:129>);

//Tin
recipes.addShaped(<thermalfoundation:material:129>, [[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>],[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>], [<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>]]);
recipes.addShaped(<thermalfoundation:material:129> * 9, [[null, null, null],[null, <ore:blockTin>, null], [null, null, null]]);
furnace.remove(<mekanism:ingot:6>);
recipes.remove(<mekanism:ingot:6>);