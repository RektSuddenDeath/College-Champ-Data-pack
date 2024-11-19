scoreboard players set timer_max mg_df_game 30
bossbar set mg_df_timer color green
bossbar set mg_df_timer name "§a§l时间"

clear @a
execute if score $selected mg_df_game matches 1 as @e[type=marker,tag=mg_df,tag=center] at @s positioned ~ ~-1 ~ run function mg:disco_fever/break_floor/amethyst
execute if score $selected mg_df_game matches 2 as @e[type=marker,tag=mg_df,tag=center] at @s positioned ~ ~-1 ~ run function mg:disco_fever/break_floor/diamond
execute if score $selected mg_df_game matches 3 as @e[type=marker,tag=mg_df,tag=center] at @s positioned ~ ~-1 ~ run function mg:disco_fever/break_floor/red_concrete
execute if score $selected mg_df_game matches 4 as @e[type=marker,tag=mg_df,tag=center] at @s positioned ~ ~-1 ~ run function mg:disco_fever/break_floor/lapis