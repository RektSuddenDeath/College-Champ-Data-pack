
execute if score difficulty hitw_wall_ctrl matches 2 run data modify storage hitw wall_difficulty_rich set value "hard"
execute if score difficulty hitw_wall_ctrl matches 1 run data modify storage hitw wall_difficulty_rich set value "medium"

scoreboard players add difficulty hitw_wall_ctrl 1