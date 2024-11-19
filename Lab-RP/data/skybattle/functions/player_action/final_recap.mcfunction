
execute as @r[team=!spec,scores={sba_recap_played=0}] run function skybattle:player_action/play_recap

execute if entity @a[team=!spec,scores={sba_recap_played=0}] run function skybattle:player_action/final_recap