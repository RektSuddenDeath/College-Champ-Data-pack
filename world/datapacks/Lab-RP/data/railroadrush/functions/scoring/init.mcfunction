
scoreboard objectives remove rrr_temp_score
scoreboard objectives add rrr_temp_score dummy

kill @e[type=marker,tag=rrr_temp_rank]
execute if entity @a[team=red] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_red"],CustomName:'{"translate":"team.red"}'}
execute if entity @a[team=blue] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_blue"],CustomName:'{"translate":"team.blue"}'}
execute if entity @a[team=green] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_green"],CustomName:'{"translate":"team.green"}'}
execute if entity @a[team=yellow] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_yellow"],CustomName:'{"translate":"team.yellow"}'}
execute if entity @a[team=cyan] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_cyan"],CustomName:'{"translate":"team.cyan"}'}
execute if entity @a[team=pink] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_pink"],CustomName:'{"translate":"team.pink"}'}
execute if entity @a[team=orange] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_orange"],CustomName:'{"translate":"team.orange"}'}
execute if entity @a[team=purple] run summon marker 80000 -64 80000 {Tags:["rrr_temp_rank","team_purple"],CustomName:'{"translate":"team.purple"}'}

function railroadrush:scoring/race_rank/init
schedule function railroadrush:scoring/race_distance/init 6s
schedule function railroadrush:scoring/gold_rush/init1 12s
schedule function railroadrush:scoring/gold_rush/init2 18s
schedule function railroadrush:scoring/gold_rush/init3 24s
schedule function railroadrush:scoring/emerald/init 30s
schedule function railroadrush:scoring/finish 36s