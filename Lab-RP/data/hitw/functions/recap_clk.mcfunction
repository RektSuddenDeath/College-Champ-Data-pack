
scoreboard players add @a[tag=hitw_alive] hitw_recap_total_survived 1
execute if score round hitw_game matches 3 as @r[team=!spec,tag=!hitw_alive,scores={hitw_recap_played=0}] run function hitw:player_action/play_recap

execute if score gameflag hitw_game matches 1 run schedule function hitw:recap_clk 1s