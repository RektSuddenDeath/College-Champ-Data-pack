
execute as @a[tag=meltdown_frozen] if score @s meltdown_heat matches 1.. run scoreboard players remove @s meltdown_heat 1


# Freeze Player Immobility
function meltdown:unfreeze/immobile

# Freeze Since
scoreboard players add @a[tag=meltdown_frozen] meltdown_freeze_since 1
# Heater Animation
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_red] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/red
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_blue] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/blue
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_green] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/green
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_yellow] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/yellow
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_cyan] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/cyan
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_pink] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/pink
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_orange] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/orange
execute as @e[type=interaction,tag=meltdown_heater,tag=heater_purple] at @s positioned ~ ~0.3 ~ run function meltdown:heater_anim/purple

# Heat Progress
execute as @a[scores={meltdown_heat=0..6}] run title @s actionbar ["热量: ",{"text": "","color":"red"},{"text": "■■■■■■■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=7..12}] run title @s actionbar ["热量: ",{"text": "■","color":"red"},{"text": "■■■■■■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=13..18}] run title @s actionbar ["热量: ",{"text": "■■","color":"red"},{"text": "■■■■■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=19..24}] run title @s actionbar ["热量: ",{"text": "■■■","color":"red"},{"text": "■■■■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=25..30}] run title @s actionbar ["热量: ",{"text": "■■■■","color":"red"},{"text": "■■■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=31..36}] run title @s actionbar ["热量: ",{"text": "■■■■■","color":"red"},{"text": "■■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=37..42}] run title @s actionbar ["热量: ",{"text": "■■■■■■","color":"red"},{"text": "■■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=43..48}] run title @s actionbar ["热量: ",{"text": "■■■■■■■","color":"red"},{"text": "■■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=49..54}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■","color":"red"},{"text": "■■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=55..60}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■","color":"red"},{"text": "■■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=61..66}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■■","color":"red"},{"text": "■■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=67..72}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■■■","color":"red"},{"text": "■■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=73..78}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■■■■","color":"red"},{"text": "■■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=79..84}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■■■■■","color":"red"},{"text": "■■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=85..91}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■■■■■■","color":"red"},{"text": "■","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]
execute as @a[scores={meltdown_heat=92..100}] run title @s actionbar ["热量: ",{"text": "■■■■■■■■■■■■■■■","color":"red"},{"text": "","color":"#66ccff"}," ",{"score":{"name": "@s","objective": "meltdown_heat"},"color": "red"},"§c%"]

# 
scoreboard objectives add meltdown_temp_heater_count dummy
execute as @e[type=interaction,tag=heater_red] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=red,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_blue] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=blue,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_green] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=green,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_yellow] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=yellow,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_cyan] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=cyan,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_pink] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=pink,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_orange] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=orange,distance=0..3.4] meltdown_temp_heater_count 1
execute as @e[type=interaction,tag=heater_purple] at @s run scoreboard players add @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=purple,distance=0..3.4] meltdown_temp_heater_count 1

execute as @a[tag=meltdown_frozen,scores={meltdown_heat=..100,meltdown_temp_heater_count=1}] run scoreboard players add @s meltdown_heat 4
execute as @a[tag=meltdown_frozen,scores={meltdown_heat=..100,meltdown_temp_heater_count=2}] run scoreboard players add @s meltdown_heat 7
execute as @a[tag=meltdown_frozen,scores={meltdown_heat=..100,meltdown_temp_heater_count=3}] run scoreboard players add @s meltdown_heat 9
execute as @a[tag=meltdown_frozen,scores={meltdown_heat=..100,meltdown_temp_heater_count=4..}] run scoreboard players add @s meltdown_heat 11
scoreboard objectives remove meltdown_temp_heater_count

execute as @e[type=interaction,tag=heater_red] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=red,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_blue] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=blue,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_green] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=green,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_yellow] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=yellow,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_cyan] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=cyan,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_pink] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=pink,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_orange] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=orange,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]
execute as @e[type=interaction,tag=heater_purple] at @s as @a[tag=meltdown_frozen,scores={meltdown_heat=..100},team=purple,distance=0..3.4] at @s run particle lava ~ ~1 ~ 0.125 0.1 0.125 0.2 2 normal @a[distance=0.001..]


execute as @a[tag=meltdown_frozen,scores={meltdown_heat=100..}] run tag @s add queue_unfreeze
function meltdown:unfreeze/queue_unfreeze


execute if score gameflag meltdown_game matches 1 run schedule function meltdown:unfreeze/loop 4t