
scoreboard players add BlueDeaths SotGame 1
# Adds a death status to self and all already dead teammates. This serves kit given on revival.
scoreboard players add @a[team=blue,scores={SotKit=1..}] SotDeathKit 1
scoreboard players set @s SotDeathKit 1
# Clear Unnecessary items

kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:stone_sword"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:iron_shovel"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:iron_pickaxe"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:light_blue_carpet"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:leather_helmet"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:leather_chestplate"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:leather_leggings"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:leather_boots"}}]
kill @e[type=item,distance=0..2,nbt={Item:{"id":"minecraft:bow"}}]

execute as @e[type=item] run data merge entity @s {Invulnerable:1b}

# Drop Gold
function sot:death/dropgold
tellraw @s [{"text":"你死了！你失去了身上的20%的金钱。","color":"red"}]

# Raises Tombstone

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 1 run setblock ~3 73 ~31 light_blue_wool

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 2 run setblock ~3 73 ~31 blue_terracotta
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 2 run setblock ~1 73 ~31 light_blue_wool

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 3 run setblock ~3 73 ~31 blue_terracotta
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 3 run setblock ~1 73 ~31 blue_terracotta
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 3 run setblock ~-1 73 ~31 light_blue_wool

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 1 run spawnpoint @a[team=blue] ~3 75 ~33 180
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 1 run setblock ~3 75 ~32 sandstone
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 1 run setblock ~3 76 ~32 cut_sandstone_slab

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 2 run spawnpoint @a[team=blue] ~1 75 ~33 180
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 2 run setblock ~1 75 ~32 sandstone
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 2 run setblock ~1 76 ~32 cut_sandstone_slab

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 3 run spawnpoint @a[team=blue] ~-1 75 ~33 180
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 3 run setblock ~-1 75 ~32 sandstone
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 3 run setblock ~-1 76 ~32 cut_sandstone_slab

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 4 run spawnpoint @a[team=blue] ~-3 75 ~33 180
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 4 run function sot:fail/blue
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 4 run setblock ~-3 75 ~32 sandstone
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 4 run setblock ~-3 76 ~32 cut_sandstone_slab
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s if score BlueDeaths SotGame matches 4 run tellraw @a[team=blue]  [{"text": "[","color":"white"},{"text":"Sands of Time","color":"gold","bold":true},{"text": "] ","color":"white"},{"text": "你的队伍已全队被困墓穴中，挑战失败","color":"red","bold":true}]

# Announce
tellraw @a[team=blue] ["",{"selector":"@s"},{"text": "死了！在墓穴使用","color":"red"},{"text": "1块沙子","color": "yellow"},{"text": "来买活他！","color": "red"}]
execute as @a[team=blue,scores={SotDeath=0}] at @s run playsound sound.team_eliminated record @s