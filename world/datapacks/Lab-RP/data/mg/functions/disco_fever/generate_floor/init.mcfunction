
scoreboard objectives add mg_df_gen dummy
scoreboard players add platform mg_df_game 1
scoreboard players set $blocks mg_df_gen 240

kill @e[type=falling_block,nbt={BlockState:{Name:"minecraft:light_gray_concrete_powder"}}]
kill @e[type=marker,tag=mg_df,tag=floor_gen]
summon marker ~ ~-1 ~ {Tags:[mg_df,floor_gen]}

execute as @e[type=marker,tag=mg_df,tag=floor_gen] at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 tinted_glass
# Go +X
execute as @e[type=marker,tag=mg_df,tag=floor_gen] at @s run fill ~-11 ~ ~-7 ~-8 ~ ~7 light_gray_concrete
function mg:disco_fever/generate_floor/loop