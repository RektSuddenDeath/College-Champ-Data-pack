
scoreboard objectives add temp_rrr_hasthrow dummy
execute as @e[type=item,tag=!verified] at @s if entity @s[nbt={Item:{id:"minecraft:powered_rail"}}] if block ~ ~-1 ~ netherite_block run execute store success score @s temp_rrr_hasthrow run data get entity @s Thrower

execute as @e[type=item,tag=!verified,scores={temp_rrr_hasthrow=0}] at @s run setblock ~ ~ ~ powered_rail
execute as @e[type=item,tag=!verified,scores={temp_rrr_hasthrow=0}] run kill @s 
scoreboard objectives remove temp_rrr_hasthrow
execute as @e[type=item] run tag @s add verified
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:netherite_rail 1t