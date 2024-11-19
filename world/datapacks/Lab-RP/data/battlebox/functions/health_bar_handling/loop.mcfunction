

# 获取各队人数
scoreboard objectives add bb_temp_team_alives dummy
execute as @a[tag=!bb_round_eliminated,team=red] run scoreboard players add red bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=blue] run scoreboard players add blue bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=green] run scoreboard players add green bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=yellow] run scoreboard players add yellow bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=cyan] run scoreboard players add cyan bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=pink] run scoreboard players add pink bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=orange] run scoreboard players add orange bb_temp_team_alives 1
execute as @a[tag=!bb_round_eliminated,team=purple] run scoreboard players add purple bb_temp_team_alives 1

execute store result storage bb:match_data red.own_alives int 1 run scoreboard players get red bb_temp_team_alives
execute store result storage bb:match_data blue.own_alives int 1 run scoreboard players get blue bb_temp_team_alives
execute store result storage bb:match_data green.own_alives int 1 run scoreboard players get green bb_temp_team_alives
execute store result storage bb:match_data yellow.own_alives int 1 run scoreboard players get yellow bb_temp_team_alives
execute store result storage bb:match_data cyan.own_alives int 1 run scoreboard players get cyan bb_temp_team_alives
execute store result storage bb:match_data pink.own_alives int 1 run scoreboard players get pink bb_temp_team_alives
execute store result storage bb:match_data orange.own_alives int 1 run scoreboard players get orange bb_temp_team_alives
execute store result storage bb:match_data purple.own_alives int 1 run scoreboard players get purple bb_temp_team_alives

scoreboard objectives remove bb_temp_team_alives

# 获取其余的match data
function battlebox:health_bar_handling/macro_loop_current_data with storage bb:opponent
function battlebox:health_bar_handling/macro_loop_current_data_health with storage bb:opponent

# Bossbar Write
function battlebox:health_bar_handling/macro_write_bossbar with storage bb:match_data
execute if score RoundActive tourney_stats matches 1 if entity @a[team=red] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data red
execute if score RoundActive tourney_stats matches 1 if entity @a[team=blue] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data blue
execute if score RoundActive tourney_stats matches 1 if entity @a[team=green] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data green
execute if score RoundActive tourney_stats matches 1 if entity @a[team=yellow] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data yellow
execute if score RoundActive tourney_stats matches 1 if entity @a[team=cyan] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data cyan
execute if score RoundActive tourney_stats matches 1 if entity @a[team=pink] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data pink
execute if score RoundActive tourney_stats matches 1 if entity @a[team=orange] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data orange
execute if score RoundActive tourney_stats matches 1 if entity @a[team=purple] run function battlebox:health_bar_handling/macro_loop_write_bossbar_ingame with storage bb:match_data purple

execute if score RoundActive tourney_stats matches 0 if entity @a[team=red] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data red
execute if score RoundActive tourney_stats matches 0 if entity @a[team=blue] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data blue
execute if score RoundActive tourney_stats matches 0 if entity @a[team=green] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data green
execute if score RoundActive tourney_stats matches 0 if entity @a[team=yellow] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data yellow
execute if score RoundActive tourney_stats matches 0 if entity @a[team=cyan] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data cyan
execute if score RoundActive tourney_stats matches 0 if entity @a[team=pink] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data pink
execute if score RoundActive tourney_stats matches 0 if entity @a[team=orange] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data orange
execute if score RoundActive tourney_stats matches 0 if entity @a[team=purple] run function battlebox:health_bar_handling/macro_loop_write_bossbar_starting with storage bb:match_data purple

execute if score gameflag bb_game matches 1 run schedule function battlebox:health_bar_handling/loop 2t