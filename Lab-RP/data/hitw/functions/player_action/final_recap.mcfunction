
execute as @r[team=!spec,scores={hitw_recap_played=0}] run function hitw:player_action/play_recap

execute if entity @a[team=!spec,scores={hitw_recap_played=0}] run function hitw:player_action/final_recap