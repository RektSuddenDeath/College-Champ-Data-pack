
execute as @e[type=marker,tag=turf_bolt_anchor,tag=center] at @s run clone ~2 ~ ~14 ~-2 ~ ~-14 ~-3 ~ ~-14 replace move

execute as @e[type=marker,tag=turf_bolt_anchor,tag=center] at @s run fill ~2 ~ ~14 ~2 ~ ~-14 white_carpet
execute as @e[type=marker,tag=turf_bolt_anchor,tag=center] at @s run fill ~2 ~ ~14 ~2 ~ ~13 magenta_carpet
execute as @e[type=marker,tag=turf_bolt_anchor,tag=center] at @s run fill ~2 ~ ~-14 ~2 ~ ~-13 magenta_carpet

execute as @e[type=marker,tag=turf_bolt_anchor,tag=center] at @s run tp @s ~-1 ~ ~

scoreboard players remove aqua_land mg_tb_game 1
scoreboard players add magenta_land mg_tb_game 1
