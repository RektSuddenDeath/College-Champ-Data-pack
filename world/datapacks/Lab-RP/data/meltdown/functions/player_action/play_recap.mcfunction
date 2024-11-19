
scoreboard players set @s meltdown_recap_played 1
execute store result storage temp:recap placement_r1 int 1 run scoreboard players get @s meltdown_recap_r1
execute store result storage temp:recap placement_r2 int 1 run scoreboard players get @s meltdown_recap_r2
execute store result storage temp:recap placement_r3 int 1 run scoreboard players get @s meltdown_recap_r3



function meltdown:player_action/play_recap_macro with storage temp:recap
