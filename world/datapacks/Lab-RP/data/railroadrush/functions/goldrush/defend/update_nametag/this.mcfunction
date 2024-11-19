
scoreboard players operation @s rrr_gold_rush_defend_power_percent = @s rrr_gold_rush_defend_power
scoreboard players operation @s rrr_gold_rush_defend_power_percent *= 100 math
scoreboard players operation @s rrr_gold_rush_defend_power_percent /= 60 math
scoreboard players operation @s rrr_gold_rush_defend_power_percent /= 2 math
execute store result storage rrr_temp:defend power_percent int 1 run scoreboard players operation @s rrr_gold_rush_defend_power_percent /= 40 math
function railroadrush:goldrush/defend/update_nametag/macro with storage rrr_temp:defend

tag @s add nametag_updated