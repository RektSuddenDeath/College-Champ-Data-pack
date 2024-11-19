

execute if entity @s[distance=..6] if block ~ ~ ~ tnt run summon small_fireball ~ ~ ~ {Fire:0s,Silent:1b}
execute if entity @s[distance=..6] if block ~ ~ ~ tnt run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:[fire]}
execute if entity @s[distance=..6] if block ~ ~ ~ tnt run data modify entity @e[type=small_fireball,limit=1,sort=nearest] Owner set from entity @s UUID
execute if entity @s[distance=..6] if block ~ ~ ~ tnt run data modify entity @e[type=small_fireball,limit=1,sort=nearest] Motion[1] set value -10d
execute if entity @s[distance=..6] unless block ~ ~ ~ tnt positioned ^ ^ ^0.05 run function skybattle:explosives/searchstart