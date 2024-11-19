
# 周围15格内有玩家时才会行进
execute as @e[type=minecart,tag=rrr_gold_rush_defend] at @s if entity @a[team=!spec,tag=in_gold_rush,distance=..15] run data modify entity @s Motion[0] set value 0.11d
execute as @e[type=minecart,tag=rrr_gold_rush_defend] at @s unless entity @a[team=!spec,tag=in_gold_rush,distance=..15] run data modify entity @s Motion[0] set value 0.0001d
# Distance
execute as @e[type=minecart,tag=rrr_gold_rush_defend] store result score @s rrr_gold_rush_defend_score run data get entity @s Pos[0]
execute as @e[type=minecart,tag=rrr_gold_rush_defend] run scoreboard players remove @s rrr_gold_rush_defend_score 89970


execute as @e[type=minecart,tag=rrr_gold_rush_defend,tag=!rrr_gold_rush_cp_1,scores={rrr_gold_rush_defend_score=30..}] at @s run function railroadrush:goldrush/defend/open_next_zone/1
execute as @e[type=minecart,tag=rrr_gold_rush_defend,tag=!rrr_gold_rush_cp_2,scores={rrr_gold_rush_defend_score=60..}] at @s run function railroadrush:goldrush/defend/open_next_zone/2
execute as @e[type=minecart,tag=rrr_gold_rush_defend,tag=!rrr_gold_rush_cp_3,scores={rrr_gold_rush_defend_score=90..}] at @s run function railroadrush:goldrush/defend/open_next_zone/3
execute as @e[type=minecart,tag=rrr_gold_rush_defend,tag=!rrr_gold_rush_cp_4,scores={rrr_gold_rush_defend_score=120..}] at @s run function railroadrush:goldrush/defend/open_next_zone/4

# Power
## Always -1
execute as @e[type=minecart,tag=rrr_gold_rush_defend] run scoreboard players remove @s rrr_gold_rush_defend_power 3
## For each mob, -1 extra
execute as @e[type=minecart,tag=rrr_gold_rush_defend] run function railroadrush:goldrush/defend/health_diff
execute as @e[type=minecart,tag=rrr_gold_rush_defend] run scoreboard players set @s rrr_gold_rush_defend_nearby_mobs 0
execute as @e[type=#railroadrush:defend_mobs] at @s run scoreboard players add @e[type=minecart,tag=rrr_gold_rush_defend,distance=0..3.2] rrr_gold_rush_defend_nearby_mobs 1
execute as @e[type=minecart,tag=rrr_gold_rush_defend] run scoreboard players operation @s rrr_gold_rush_defend_power -= @s rrr_gold_rush_defend_nearby_mobs
## Update Nametag
function railroadrush:goldrush/defend/update_nametag/queue
tag @e[type=minecart,tag=rrr_gold_rush_defend] remove nametag_updated
## 0 Power Carts
execute as @e[type=minecart,tag=rrr_gold_rush_defend,scores={rrr_gold_rush_defend_power=..0}] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1.5
execute as @e[type=minecart,tag=rrr_gold_rush_defend,scores={rrr_gold_rush_defend_power=..0}] at @s run particle explosion ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecart,tag=rrr_gold_rush_defend,scores={rrr_gold_rush_defend_power=..0}] on passengers run kill @s
execute as @e[type=minecart,tag=rrr_gold_rush_defend,scores={rrr_gold_rush_defend_power=..0}] run kill @s