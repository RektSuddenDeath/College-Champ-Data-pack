

scoreboard players add widthmove sba_game 1
execute as @e[type=area_effect_cloud,tag=borderwidth] at @s run tp @s ^ ^ ^1

execute if score widthmove sba_game < width sba_game run function skybattle:border/widthinitmove