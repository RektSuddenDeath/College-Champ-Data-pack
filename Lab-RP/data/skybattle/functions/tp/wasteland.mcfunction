
# Teleport Players
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~89 5 ~25 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~88 5 ~-26 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~25 5 ~-89 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-26 5 ~-88 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-89 5 ~-25 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-88 5 ~26 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~25 5 ~88 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-26 5 ~89 {Duration:999999,Tags:["skybattle","spawn"]}

scoreboard objectives add sba_temp1 dummy

scoreboard players set @e[type=area_effect_cloud,tag=spawn] sba_temp1 0
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 1
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 2
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 3
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 4
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 5
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 6
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 7
scoreboard players set @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=0},limit=1,sort=random] sba_temp1 8

execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=1}] run tp @a[team=red] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=2}] run tp @a[team=blue] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=3}] run tp @a[team=green] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=4}] run tp @a[team=yellow] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=5}] run tp @a[team=cyan] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=6}] run tp @a[team=orange] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=7}] run tp @a[team=pink] @s
execute as @e[type=area_effect_cloud,tag=spawn,scores={sba_temp1=8}] run tp @a[team=purple] @s

# Clear out used entities
kill @e[type=item]
kill @e[type=area_effect_cloud,tag=spawn]
scoreboard objectives remove sba_temp1

# Generate Border
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~24 5 ~89 ~27 8 ~86 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~25 5 ~88 ~26 7 ~87 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-23 5 ~87 ~-26 8 ~90 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-24 5 ~88 ~-25 7 ~89 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-86 5 ~27 ~-89 8 ~24 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-87 5 ~26 ~-88 7 ~25 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-90 5 ~-26 ~-87 8 ~-23 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-89 5 ~-25 ~-88 7 ~-24 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-27 5 ~-89 ~-24 8 ~-86 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-26 5 ~-88 ~-25 7 ~-87 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~23 5 ~-90 ~26 8 ~-87 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~24 5 ~-89 ~25 7 ~-88 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~89 5 ~-27 ~86 8 ~-24 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~88 5 ~-26 ~87 7 ~-25 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~90 5 ~23 ~87 8 ~26 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~89 5 ~24 ~88 7 ~25 air

# Change Gamemode
gamemode adventure @a[team=!spec]
execute as @a[team=!spec] at @s run spawnpoint