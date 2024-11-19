fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace #railroadrush:destructables
fill ~1.6 ~2 ~1.6 ~-1.6 ~2.5 ~-1.6 air replace #railroadrush:destructables
fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2.5 ~-1.6 air replace #railroadrush:destructables
fill ~2 ~1.6 ~1.6 ~2.5 ~-1.6 ~-1.6 air replace #railroadrush:destructables
fill ~-2 ~1.6 ~1.6 ~-2.5 ~-1.6 ~-1.6 air replace #railroadrush:destructables
fill ~1.6 ~1.6 ~2 ~-1.6 ~-1.6 ~2.5 air replace #railroadrush:destructables
fill ~-1.6 ~1.6 ~-2 ~-1.6 ~-1.6 ~-2.5 air replace #railroadrush:destructables

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 gravel replace cobblestone
fill ~1.6 ~2 ~1.6 ~-1.6 ~2.5 ~-1.6 gravel replace cobblestone
fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2.5 ~-1.6 gravel replace cobblestone
fill ~2 ~1.6 ~1.6 ~2.5 ~-1.6 ~-1.6 gravel replace cobblestone
fill ~-2 ~1.6 ~1.6 ~-2.5 ~-1.6 ~-1.6 gravel replace cobblestone
fill ~1.6 ~1.6 ~2 ~-1.6 ~-1.6 ~2.5 gravel replace cobblestone
fill ~-1.6 ~1.6 ~-2 ~-1.6 ~-1.6 ~-2.5 gravel replace cobblestone

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 gravel replace andesite
fill ~1.6 ~2 ~1.6 ~-1.6 ~2.5 ~-1.6 gravel replace andesite
fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2.5 ~-1.6 gravel replace andesite
fill ~2 ~1.6 ~1.6 ~2.5 ~-1.6 ~-1.6 gravel replace andesite
fill ~-2 ~1.6 ~1.6 ~-2.5 ~-1.6 ~-1.6 gravel replace andesite
fill ~1.6 ~1.6 ~2 ~-1.6 ~-1.6 ~2.5 gravel replace andesite
fill ~-1.6 ~1.6 ~-2 ~-1.6 ~-1.6 ~-2.5 gravel replace andesite

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 gravel replace stone
fill ~1.6 ~2 ~1.6 ~-1.6 ~2.5 ~-1.6 gravel replace stone
fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2.5 ~-1.6 gravel replace stone
fill ~2 ~1.6 ~1.6 ~2.5 ~-1.6 ~-1.6 gravel replace stone
fill ~-2 ~1.6 ~1.6 ~-2.5 ~-1.6 ~-1.6 gravel replace stone
fill ~1.6 ~1.6 ~2 ~-1.6 ~-1.6 ~2.5 gravel replace stone
fill ~-1.6 ~1.6 ~-2 ~-1.6 ~-1.6 ~-2.5 gravel replace stone

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 cobblestone replace cracked_stone_bricks
fill ~1.6 ~2 ~1.6 ~-1.6 ~2.5 ~-1.6 cobblestone replace cracked_stone_bricks
fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2.5 ~-1.6 cobblestone replace cracked_stone_bricks
fill ~2 ~1.6 ~1.6 ~2.5 ~-1.6 ~-1.6 cobblestone replace cracked_stone_bricks
fill ~-2 ~1.6 ~1.6 ~-2.5 ~-1.6 ~-1.6 cobblestone replace cracked_stone_bricks
fill ~1.6 ~1.6 ~2 ~-1.6 ~-1.6 ~2.5 cobblestone replace cracked_stone_bricks
fill ~-1.6 ~1.6 ~-2 ~-1.6 ~-1.6 ~-2.5 cobblestone replace cracked_stone_bricks

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 cracked_stone_bricks replace stone_bricks
fill ~1.6 ~2 ~1.6 ~-1.6 ~2.5 ~-1.6 cracked_stone_bricks replace stone_bricks
fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2.5 ~-1.6 cracked_stone_bricks replace stone_bricks
fill ~2 ~1.6 ~1.6 ~2.5 ~-1.6 ~-1.6 cracked_stone_bricks replace stone_bricks
fill ~-2 ~1.6 ~1.6 ~-2.5 ~-1.6 ~-1.6 cracked_stone_bricks replace stone_bricks
fill ~1.6 ~1.6 ~2 ~-1.6 ~-1.6 ~2.5 cracked_stone_bricks replace stone_bricks
fill ~-1.6 ~1.6 ~-2 ~-1.6 ~-1.6 ~-2.5 cracked_stone_bricks replace stone_bricks

execute if block ~1 ~ ~1 #railroadrush:destructable_drop run setblock ~1 ~ ~1 air destroy
execute if block ~1 ~ ~ #railroadrush:destructable_drop run setblock ~1 ~ ~ air destroy
execute if block ~1 ~ ~-1 #railroadrush:destructable_drop run setblock ~1 ~ ~-1 air destroy
execute if block ~ ~ ~1 #railroadrush:destructable_drop run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #railroadrush:destructable_drop run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~-1 #railroadrush:destructable_drop run setblock ~ ~ ~ air destroy
execute if block ~-1 ~ ~1 #railroadrush:destructable_drop run setblock ~-1 ~ ~1 air destroy
execute if block ~-1 ~ ~ #railroadrush:destructable_drop run setblock ~-1 ~ ~ air destroy
execute if block ~-1 ~ ~-1 #railroadrush:destructable_drop run setblock ~-1 ~ ~-1 air destroy

execute if block ~1 ~1 ~1 #railroadrush:destructable_drop run setblock ~1 ~1 ~1 air destroy
execute if block ~1 ~1 ~ #railroadrush:destructable_drop run setblock ~1 ~1 ~ air destroy
execute if block ~1 ~1 ~-1 #railroadrush:destructable_drop run setblock ~1 ~1 ~-1 air destroy
execute if block ~ ~1 ~1 #railroadrush:destructable_drop run setblock ~ ~1 ~1 air destroy
execute if block ~ ~1 ~ #railroadrush:destructable_drop run setblock ~ ~1 ~ air destroy
execute if block ~ ~1 ~-1 #railroadrush:destructable_drop run setblock ~ ~1 ~-1 air destroy
execute if block ~-1 ~1 ~1 #railroadrush:destructable_drop run setblock ~-1 ~1 ~1 air destroy
execute if block ~-1 ~1 ~ #railroadrush:destructable_drop run setblock ~-1 ~1 ~ air destroy
execute if block ~-1 ~1 ~-1 #railroadrush:destructable_drop run setblock ~-1 ~1 ~-1 air destroy

execute if block ~1 ~-1 ~1 #railroadrush:destructable_drop run setblock ~1 ~-1 ~1 air destroy
execute if block ~1 ~-1 ~ #railroadrush:destructable_drop run setblock ~1 ~-1 ~ air destroy
execute if block ~1 ~-1 ~-1 #railroadrush:destructable_drop run setblock ~1 ~-1 ~-1 air destroy
execute if block ~ ~-1 ~1 #railroadrush:destructable_drop run setblock ~ ~-1 ~1 air destroy
execute if block ~ ~-1 ~ #railroadrush:destructable_drop run setblock ~ ~-1 ~ air destroy
execute if block ~ ~-1 ~-1 #railroadrush:destructable_drop run setblock ~ ~-1 ~-1 air destroy
execute if block ~-1 ~-1 ~1 #railroadrush:destructable_drop run setblock ~-1 ~-1 ~1 air destroy
execute if block ~-1 ~-1 ~ #railroadrush:destructable_drop run setblock ~-1 ~-1 ~ air destroy
execute if block ~-1 ~-1 ~-1 #railroadrush:destructable_drop run setblock ~-1 ~-1 ~-1 air destroy