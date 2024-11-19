
# Teleport Players
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~89 6 ~25 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~88 6 ~-26 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~25 6 ~-89 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-26 6 ~-88 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-89 6 ~-25 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-88 6 ~26 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~25 6 ~88 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-26 6 ~89 {Duration:999999,Tags:["skybattle","spawn"]}

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
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~24 6 ~89 ~27 9 ~86 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~25 6 ~88 ~26 8 ~87 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-23 6 ~87 ~-26 9 ~90 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-24 6 ~88 ~-25 8 ~89 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-86 6 ~27 ~-89 9 ~24 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-87 6 ~26 ~-88 8 ~25 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-90 6 ~-26 ~-87 9 ~-23 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-89 6 ~-25 ~-88 8 ~-24 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-27 6 ~-89 ~-24 9 ~-86 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-26 6 ~-88 ~-25 8 ~-87 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~23 6 ~-90 ~26 9 ~-87 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~24 6 ~-89 ~25 8 ~-88 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~89 6 ~-27 ~86 9 ~-24 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~88 6 ~-26 ~87 8 ~-25 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~90 6 ~23 ~87 9 ~26 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~89 6 ~24 ~88 8 ~25 air

# Change Gamemode
gamemode adventure @a[team=!spec]
execute as @a[team=!spec] at @s run spawnpoint