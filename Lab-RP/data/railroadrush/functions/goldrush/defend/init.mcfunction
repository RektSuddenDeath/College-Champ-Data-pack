

forceload add 89971 89832 89971 90000
kill @e[type=marker,tag=rrr_marker,tag=rrr_gold_rush_anchor_defend]
kill @e[type=minecart,tag=rrr_gold_rush_defend]
kill @e[type=villager,tag=rrr_gold_rush_defend]

execute if entity @a[team=red] run summon marker 89971 33 89832 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_red"]}
execute if entity @a[team=blue] run summon marker 89971 33 89856 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_blue"]}
execute if entity @a[team=green] run summon marker 89971 33 89880 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_green"]}
execute if entity @a[team=yellow] run summon marker 89971 33 89904 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_yellow"]}
execute if entity @a[team=cyan] run summon marker 89971 33 89928 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_cyan"]}
execute if entity @a[team=pink] run summon marker 89971 33 89952 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_pink"]}
execute if entity @a[team=orange] run summon marker 89971 33 89976 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_orange"]}
execute if entity @a[team=purple] run summon marker 89971 33 90000 {Tags:["rrr_marker","rrr_gold_rush_anchor_defend","team_purple"]}
# Defend 
scoreboard objectives remove rrr_gold_rush_defend_score
scoreboard objectives add rrr_gold_rush_defend_score dummy
scoreboard objectives remove rrr_gold_rush_defend_power
scoreboard objectives add rrr_gold_rush_defend_power dummy
scoreboard objectives remove rrr_gold_rush_defend_power_percent
scoreboard objectives add rrr_gold_rush_defend_power_percent dummy

scoreboard objectives add rrr_gold_rush_defend_nearby_mobs dummy

# Take damage component
scoreboard objectives remove rrr_gold_rush_defend_last_health
scoreboard objectives add rrr_gold_rush_defend_last_health dummy
scoreboard objectives remove rrr_gold_rush_defend_this_health
scoreboard objectives add rrr_gold_rush_defend_this_health dummy

function railroadrush:goldrush/defend/loop