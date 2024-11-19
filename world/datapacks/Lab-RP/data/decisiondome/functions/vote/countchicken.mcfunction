# Remix Overrides
execute if score dome_boards_hidden elevatorjoke matches 1 run function decisiondome:reveal_dome

execute if score remix_mode tourney_stats matches 5 run function decisiondome:vote/remix_count/5


# Clear Remix Functions
schedule clear decisiondome:vote/remix_loop/1
schedule clear decisiondome:vote/remix_loop/2
schedule clear decisiondome:vote/remix_loop/3
schedule clear decisiondome:vote/remix_loop/4
schedule clear decisiondome:vote/remix_loop/5
schedule clear decisiondome:vote/remix_loop/6
schedule clear decisiondome:vote/remix_loop/7
schedule clear decisiondome:vote/chicken_limiter

execute if score remix_mode tourney_stats matches 5 run return 5

# Normal Counting
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ white_wool run scoreboard players add @e[type=area_effect_cloud,tag=1] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ orange_wool run scoreboard players add @e[type=area_effect_cloud,tag=2] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ magenta_wool run scoreboard players add @e[type=area_effect_cloud,tag=3] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ light_blue_wool run scoreboard players add @e[type=area_effect_cloud,tag=4] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ yellow_wool run scoreboard players add @e[type=area_effect_cloud,tag=5] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ lime_wool run scoreboard players add @e[type=area_effect_cloud,tag=6] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ pink_wool run scoreboard players add @e[type=area_effect_cloud,tag=7] dd_vote 1
execute as @e[type=chicken,nbt=!{CustomName:'{"text":"Dinnerbone"}'}] at @s if block ~ ~-3 ~ gray_wool run scoreboard players add @e[type=area_effect_cloud,tag=8] dd_vote 1

execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ white_wool run scoreboard players add @e[type=area_effect_cloud,tag=1] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ orange_wool run scoreboard players add @e[type=area_effect_cloud,tag=2] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ magenta_wool run scoreboard players add @e[type=area_effect_cloud,tag=3] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ light_blue_wool run scoreboard players add @e[type=area_effect_cloud,tag=4] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ yellow_wool run scoreboard players add @e[type=area_effect_cloud,tag=5] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ lime_wool run scoreboard players add @e[type=area_effect_cloud,tag=6] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ pink_wool run scoreboard players add @e[type=area_effect_cloud,tag=7] dd_vote 3
execute as @a[tag=dd_swappedPlayer] at @s if block ~ ~-3 ~ gray_wool run scoreboard players add @e[type=area_effect_cloud,tag=8] dd_vote 3

execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ white_wool run scoreboard players remove @e[type=area_effect_cloud,tag=1] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ orange_wool run scoreboard players remove @e[type=area_effect_cloud,tag=2] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ magenta_wool run scoreboard players remove @e[type=area_effect_cloud,tag=3] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ light_blue_wool run scoreboard players remove @e[type=area_effect_cloud,tag=4] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ yellow_wool run scoreboard players remove @e[type=area_effect_cloud,tag=5] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ lime_wool run scoreboard players remove @e[type=area_effect_cloud,tag=6] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ pink_wool run scoreboard players remove @e[type=area_effect_cloud,tag=7] dd_vote 2
execute as @e[type=chicken,tag=negative_vote] at @s if block ~ ~-3 ~ gray_wool run scoreboard players remove @e[type=area_effect_cloud,tag=8] dd_vote 2

