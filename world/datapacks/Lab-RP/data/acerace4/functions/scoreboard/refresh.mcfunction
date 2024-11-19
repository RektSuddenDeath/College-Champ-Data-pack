
scoreboard players set $ar_sb_l4 ar_sb 4
scoreboard players set $ar_sb_l3 ar_sb 3
scoreboard players set $ar_sb_l2 ar_sb 2
scoreboard players set $ar_sb_l1 ar_sb 1
scoreboard players set $ar_sb_l0 ar_sb 0
scoreboard players set $ar_sb_l-1 ar_sb -1


scoreboard players display name $ar_sb_l4 ar_sb "§b§l当前领先者："

scoreboard objectives add ar_sb_temp dummy

scoreboard players operation 1 ar_sb_temp = completedplayers ar_game
scoreboard players operation 1 ar_sb_temp += 1 math

execute if score 1 ar_sb_temp matches 29.. run scoreboard players set 1 ar_sb_temp 29

scoreboard players operation 2 ar_sb_temp = 1 ar_sb_temp
scoreboard players operation 3 ar_sb_temp = 1 ar_sb_temp
scoreboard players operation 4 ar_sb_temp = 1 ar_sb_temp

scoreboard players add 2 ar_sb_temp 1
scoreboard players add 3 ar_sb_temp 2
scoreboard players add 4 ar_sb_temp 3

execute store result storage ar_sb_temp l3 int 1 run scoreboard players get 1 ar_sb_temp
execute store result storage ar_sb_temp l2 int 1 run scoreboard players get 2 ar_sb_temp
execute store result storage ar_sb_temp l1 int 1 run scoreboard players get 3 ar_sb_temp
execute store result storage ar_sb_temp l0 int 1 run scoreboard players get 4 ar_sb_temp

scoreboard players display name $ar_sb_l-1 ar_sb ""

function acerace4:scoreboard/refresh_macro with storage ar_sb_temp

scoreboard objectives remove ar_sb_temp

execute if score gameflag ar_game matches 1 run schedule function acerace4:scoreboard/refresh 10t