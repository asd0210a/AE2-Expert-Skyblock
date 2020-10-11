import crafttweaker.item.IItemStack;
import mods.jei.JEI;
 
val items = [
    <minecraft:fence>,
    <minecraft:nether_brick_fence>,
    <minecraft:spruce_fence>,
    <minecraft:birch_fence>,
    <minecraft:jungle_fence>,
    <minecraft:acacia_fence>,
    <minecraft:dark_oak_fence>
] as IItemStack[];
 
for item in items {
    item.addTooltip("Hello World");
}
 
furnace.remove(<minecraft:cooked_beef>);

recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <minecraft:stone>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);