
# Give a knowledge book if there isn't one in player's inventory
execute as @a[team=!spec,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:knowledge_book",Count:1b}]}] run clear @s knowledge_book
execute as @a[team=!spec,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:knowledge_book",Count:1b}]}] run tag @s add recall
execute as @a[team=!spec,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:knowledge_book",Count:1b}]}] run item replace entity @s hotbar.2 with knowledge_book{display:{Name:'["§r§6§l回到所在大关关口"]'}}

# Recall Cooldown
scoreboard players remove @a[team=!spec,gamemode=adventure] pkw2_recallcd 1
tellraw @a[tag=recall,scores={pkw2_recallcd=1..}] ["","§c[§r梎§c] ",{"text": "§c此操作仍在冷却中！"}]
tag @a[tag=recall,scores={pkw2_recallcd=1..}] remove recall

## Set Cooldown to 5s
scoreboard players set @a[tag=recall] pkw2_recallcd 100

# Check if the recall request is valid
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run function pkw2:checkpoint/tp_template/shrine with storage pkw2:checkpoint_coords/1
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run tellraw @s ["§b[§r梎§b] ","§e你已被传送回上一个大关关口。"]
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run playsound minecraft:item.totem.use player @s
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run tag @s add recallsuccess
execute as @a[tag=recall,scores={pkw2_cp=2..4}] at @s run scoreboard players set @s pkw2_cp 1

execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run function pkw2:checkpoint/tp_template/shrine with storage pkw2:checkpoint_coords/8
execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run tellraw @s ["§b[§r梎§b] ","§e你已被传送回上一个大关关口。"]
execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run playsound minecraft:item.totem.use player @s
execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run tag @s add recallsuccess
execute as @a[tag=recall,scores={pkw2_cp=9..11}] at @s run scoreboard players set @s pkw2_cp 8

execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run function pkw2:checkpoint/tp_template/shrine with storage pkw2:checkpoint_coords/15
execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run tellraw @s ["§b[§r梎§b] ","§e你已被传送回上一个大关关口。"]
execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run playsound minecraft:item.totem.use player @s
execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run tag @s add recallsuccess
execute as @a[tag=recall,scores={pkw2_cp=16..18}] at @s run scoreboard players set @s pkw2_cp 15

execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run function pkw2:checkpoint/tp_template/shrine with storage pkw2:checkpoint_coords/22
execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run tellraw @s ["§b[§r梎§b] ","§e你已被传送回上一个大关关口。"]
execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run playsound minecraft:item.totem.use player @s
execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run tag @s add recallsuccess
execute as @a[tag=recall,scores={pkw2_cp=23..25}] at @s run scoreboard players set @s pkw2_cp 22

execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run function pkw2:checkpoint/tp_template/shrine with storage pkw2:checkpoint_coords/29
execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run tellraw @s ["§b[§r梎§b] ","§e你已被传送回上一个大关关口。"]
execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run playsound minecraft:item.totem.use player @s
execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run tag @s add recallsuccess
execute as @a[tag=recall,scores={pkw2_cp=30..32}] at @s run scoreboard players set @s pkw2_cp 29

execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run function pkw2:checkpoint/tp_template/main with storage pkw2:checkpoint_coords/36
execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run tellraw @s ["§b[§r梎§b] ","§e你已被传送至终点大关入口。"]
execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run playsound minecraft:item.totem.use player @s
execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run tag @s add recallsuccess
execute as @a[tag=recall,scores={pkw2_cp=37..41}] at @s run scoreboard players set @s pkw2_cp 36


# Announce Fails
tellraw @a[tag=recall,tag=!recallsuccess] ["§c[§r梎§c] ","§c你不能在这里使用它！"]

# Cleanup
tag @a remove recall
tag @a remove recallsuccess
scoreboard players set @a pkw2_recall 0
# Loop
execute if score gameflag pkw2_game matches 1 unless score Overtime pkw2_game matches 1 run schedule function pkw2:checkpoint/recall 1t