


execute if score gameflag meltdown_game matches 0 run return 0
# Chill Meter Change (2 Chill every 5 ticks. 1 Chill depletes every 5 ticks.)
execute as @a[tag=!meltdown_frozen,tag=meltdown_alive,scores={meltdown_modifiers_chill_meter=1..}] at @s unless entity @a[tag=meltdown_frozen,distance=0..3.5] run scoreboard players remove @s meltdown_modifiers_chill_meter 2
execute as @a[tag=meltdown_frozen] at @s run scoreboard players add @a[tag=meltdown_alive,tag=!meltdown_frozen,distance=0..3.5] meltdown_modifiers_chill_meter 2
execute as @a[tag=meltdown_frozen] at @s run function meltdown:modifiers/spreading_chill/particle


scoreboard players set @a[tag=meltdown_frozen] meltdown_modifiers_chill_meter 0
scoreboard players set @a[gamemode=spectator] meltdown_modifiers_chill_meter 0

scoreboard players set @a[scores={meltdown_modifiers_chill_meter=100..}] meltdown_modifiers_chill_meter 100
# Chill meter actionbar
execute as @a[scores={meltdown_modifiers_chill_meter=1..}] run title @s actionbar ["寒冷度: ",{"score":{"name": "@s","objective": "meltdown_modifiers_chill_meter"},"color": "#66CCFF"},{"text":"%","color": "#66CCFF"}]

# Frozen when chill meter reaches 100.
execute as @a[scores={meltdown_modifiers_chill_meter=100}] at @s run tellraw @s ["§b[§r坕§b] 过度寒冷！"]
execute as @a[scores={meltdown_modifiers_chill_meter=100}] at @s run tag @s add queue_freeze

# Loop
execute if score gameflag meltdown_game matches 1 run schedule function meltdown:modifiers/spreading_chill/loop 5t