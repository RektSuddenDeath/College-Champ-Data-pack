
# Prevents Gold from blowing up
execute as @e[type=item,nbt=!{Invulnerable:1b}] run data merge entity @s {Invulnerable:1b}

# Rusty Key Pickup
execute as @a[scores={SotRustyKeyPick=1..}] run title @s title ""
execute as @a[scores={SotRustyKeyPick=1..}] run title @s subtitle ["",{"text": "+1 生锈的钥匙","color": "gray"}]
scoreboard players set @a SotRustyKeyPick 0
# Main Calculation
clear @a gold_nugget
clear @a gold_ingot
clear @a gold_block
scoreboard players remove @a SotPickupDelay 1
scoreboard players reset @a[scores={SotPickupDelay=..0}] SotPickupCache
scoreboard players set @a SotSessionCache 0

execute as @a[scores={SotNugget=1..}] run scoreboard players operation @s SotSessionCache += @s SotNugget

execute as @a[scores={SotIngot=1..}] run scoreboard players operation @s SotIngot *= 15 SotCache
execute as @a[scores={SotIngot=1..}] run scoreboard players operation @s SotSessionCache += @s SotIngot

execute as @a[scores={SotBlock=1..}] run scoreboard players operation @s SotBlock *= 45 SotCache
execute as @a[scores={SotBlock=1..}] run scoreboard players operation @s SotSessionCache += @s SotBlock

execute as @a[scores={SotSessionCache=1..}] at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[scores={SotSessionCache=1..}] run title @s times 0 100 40
execute as @a[scores={SotSessionCache=1..}] run title @s title " "
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotSessionCache_multi = @s SotSessionCache
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotSessionCache_multi *= multiplier1 tourney_stats
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotSessionCache_multi /= multiplier2 tourney_stats

execute as @a[scores={SotSessionCache=1..,SotPickupDelay=..0}] run title @s subtitle [{"text":"+","color":"yellow"},{"score":{"objective":"SotSessionCache_multi","name":"@s"},"color": "gold"}]
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotPickupCache += @s SotSessionCache
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotPersonal += @s SotSessionCache

execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotPickupCache_multi = @s SotPickupCache
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotPickupCache_multi *= multiplier1 tourney_stats
execute as @a[scores={SotSessionCache=1..}] run scoreboard players operation @s SotPickupCache_multi /= multiplier2 tourney_stats

execute as @a[scores={SotSessionCache=1..,SotPickupDelay=1..80}] run title @s subtitle [{"text":"+","color":"yellow"},{"score":{"objective": "SotPickupCache_multi","name": "@s"},"color":"gold"},{"text":" [+","color":"white"},{"score":{"objective":"SotSessionCache_multi","name":"@s"},"color": "white"},{"text":"]","color":"white"}]
execute as @a[scores={SotSessionCache=1..}] run scoreboard players set @s SotPickupDelay 80

scoreboard players set @a SotNugget 0
scoreboard players set @a SotIngot 0
scoreboard players set @a SotBlock 0


execute if score gameflag SotGame matches 1 run schedule function sot:golddetermine 1t

# Clears all dropped torches and Cracked stone bricks and Dropped Markers

effect give @a water_breathing 2 0 true