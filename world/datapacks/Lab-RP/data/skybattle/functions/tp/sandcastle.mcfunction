
# Teleport Players
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-65 ~11 ~27 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-65 ~11 ~-28 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-27 ~11 ~-65 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~28 ~11 ~-65 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~65 ~11 ~-27 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~65 ~11 ~28 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~27 ~11 ~65 {Duration:999999,Tags:["skybattle","spawn"]}
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~-28 ~11 ~65 {Duration:999999,Tags:["skybattle","spawn"]}

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
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~26 ~11 ~-63 ~29 ~14 ~-66 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~27 ~11 ~-64 ~28 ~14 ~-65 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~66 ~11 ~-28 ~63 ~14 ~-25 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~65 ~11 ~-27 ~64 ~14 ~-26 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~66 ~11 ~26 ~63 ~14 ~29 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~65 ~11 ~27 ~64 ~14 ~28 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~28 ~11 ~66 ~25 ~14 ~63 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~27 ~11 ~65 ~26 ~14 ~64 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-29 ~11 ~66 ~-26 ~14 ~63 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-28 ~11 ~65 ~-27 ~14 ~64 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-66 ~11 ~28 ~-63 ~14 ~25 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-65 ~11 ~27 ~-64 ~14 ~26 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-66 ~11 ~-29 ~-63 ~14 ~-26 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-65 ~11 ~-28 ~-64 ~14 ~-27 air

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-28 ~11 ~-66 ~-25 ~14 ~-63 barrier
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run fill ~-27 ~11 ~-65 ~-26 ~14 ~-64 air

# Change Gamemode
gamemode adventure @a[team=!spec]
execute as @a[team=!spec] at @s run spawnpoint