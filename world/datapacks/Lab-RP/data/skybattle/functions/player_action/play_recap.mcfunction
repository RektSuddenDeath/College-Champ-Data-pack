
scoreboard players set @s sba_recap_played 1
execute store result storage temp:recap placement_r1 int 1 run scoreboard players get @s sba_recap_r1
execute store result storage temp:recap placement_r2 int 1 run scoreboard players get @s sba_recap_r2
execute store result storage temp:recap placement_r3 int 1 run scoreboard players get @s sba_recap_r3

scoreboard objectives add sba_temp_ks dummy
scoreboard players operation @s sba_temp_ks += @s sba_gamekills
# 如果获胜后结算，则不结算Round 3 Kills到这里
execute if score @s sba_recap_r3 matches 2.. run scoreboard players operation @s sba_temp_ks += @s sba_roundkills


function skybattle:player_action/play_recap_macro with storage temp:recap

scoreboard objectives remove sba_temp_ks

