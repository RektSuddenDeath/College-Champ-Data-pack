
execute as @e[type=area_effect_cloud,tag=fire] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
# kill @e[type=small_fireball]
execute as @a[scores={sba_tntplace=1..}] at @s anchored eyes run function skybattle:explosives/searchstart
execute as @a[scores={sba_tntplace=1..}] at @s anchored eyes positioned ^1 ^ ^ run function skybattle:explosives/searchstart
execute as @a[scores={sba_tntplace=1..}] at @s anchored eyes positioned ^-1 ^ ^ run function skybattle:explosives/searchstart
execute as @a[scores={sba_tntplace=1..}] at @s anchored eyes positioned ^ ^-1 ^-1 run function skybattle:explosives/searchstart
execute as @a[scores={sba_tntplace=1..}] at @s anchored eyes positioned ^ ^1 ^-1 run function skybattle:explosives/searchstart
scoreboard players set @a sba_tntplace 0
execute if score gameflag sba_game matches 1 run schedule function skybattle:explosives/loop 1t