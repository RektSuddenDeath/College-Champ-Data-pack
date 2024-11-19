

execute if score platform mg_df_game matches ..3 run scoreboard players set timer_max mg_df_game 100
execute if score platform mg_df_game matches 4..6 run scoreboard players set timer_max mg_df_game 80
execute if score platform mg_df_game matches 7..10 run scoreboard players set timer_max mg_df_game 60
execute if score platform mg_df_game matches 11..14 run scoreboard players set timer_max mg_df_game 50
execute if score platform mg_df_game matches 15..18 run scoreboard players set timer_max mg_df_game 40
execute if score platform mg_df_game matches 19..24 run scoreboard players set timer_max mg_df_game 30
execute if score platform mg_df_game matches 25..28 run scoreboard players set timer_max mg_df_game 25
execute if score platform mg_df_game matches 29..32 run scoreboard players set timer_max mg_df_game 20
execute if score platform mg_df_game matches 33.. run scoreboard players set timer_max mg_df_game 15

execute if score platform mg_df_game matches 4 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 7 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 11 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 15 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 19 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 25 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 29 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]
execute if score platform mg_df_game matches 33 run tellraw @a ["[§c!§f] §c§l平台速度提升！"]

execute if score platform mg_df_game matches 4 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 7 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 11 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 15 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 19 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 25 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 29 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s
execute if score platform mg_df_game matches 33 run execute as @a at @s run playsound minecraft:sound.mapupdate record @s

execute if score platform mg_df_game matches ..3 run data modify storage mg:disco_fever platform_time set value "5.0s"
execute if score platform mg_df_game matches 4..6 run data modify storage mg:disco_fever platform_time set value "4.0s"
execute if score platform mg_df_game matches 7..10 run data modify storage mg:disco_fever platform_time set value "3.0s"
execute if score platform mg_df_game matches 11..14 run data modify storage mg:disco_fever platform_time set value "2.5s"
execute if score platform mg_df_game matches 15..18 run data modify storage mg:disco_fever platform_time set value "2.0s"
execute if score platform mg_df_game matches 19..24 run data modify storage mg:disco_fever platform_time set value "1.5s"
execute if score platform mg_df_game matches 25..28 run data modify storage mg:disco_fever platform_time set value "1.25s"
execute if score platform mg_df_game matches 29..32 run data modify storage mg:disco_fever platform_time set value "1.0s"
execute if score platform mg_df_game matches 33.. run data modify storage mg:disco_fever platform_time set value "0.75s §c(MAX)§f"

bossbar set mg_df_timer color red
bossbar set mg_df_timer name "§c§l时间"
scoreboard players operation timer_value mg_df_game = timer_max mg_df_game

function mg:disco_fever/rand
execute as @e[type=marker,tag=mg_df,tag=center] at @s run tp @s ~4 ~ ~ 
execute as @e[type=marker,tag=mg_df,tag=center] at @s run function mg:disco_fever/generate_floor/init