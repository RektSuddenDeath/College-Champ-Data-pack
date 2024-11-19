
execute as @e[type=marker,tag=mg_df,tag=floor_gen] at @s run summon marker ~ ~ ~ {Tags:[mg_df,gen_loop]}
execute as @e[type=marker,tag=mg_df,tag=floor_gen] at @s run spreadplayers ~ ~ 0 7 under 101 false @e[type=marker,tag=mg_df,tag=gen_loop]

execute at @e[type=marker,tag=mg_df,tag=gen_loop] if block ~ ~-1 ~ tinted_glass run scoreboard players remove $blocks mg_df_gen 1

execute at @e[type=marker,tag=mg_df,tag=gen_loop] if score $blocks mg_df_gen matches 180..239 if block ~ ~-1 ~ tinted_glass run setblock ~ ~-1 ~ diamond_block
execute at @e[type=marker,tag=mg_df,tag=gen_loop] if score $blocks mg_df_gen matches 120..179 if block ~ ~-1 ~ tinted_glass run setblock ~ ~-1 ~ red_concrete
execute at @e[type=marker,tag=mg_df,tag=gen_loop] if score $blocks mg_df_gen matches 60..119 if block ~ ~-1 ~ tinted_glass run setblock ~ ~-1 ~ amethyst_block
execute at @e[type=marker,tag=mg_df,tag=gen_loop] if score $blocks mg_df_gen matches 0..59 if block ~ ~-1 ~ tinted_glass run setblock ~ ~-1 ~ lapis_block

kill @e[type=marker,tag=mg_df,tag=gen_loop]
scoreboard players remove $blocks mg_df_gen 1
execute if score $blocks mg_df_gen matches 1.. run function mg:disco_fever/generate_floor/loop




