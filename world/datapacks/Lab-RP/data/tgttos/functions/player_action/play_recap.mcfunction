


scoreboard players set @s tgttos_recap_played 1
execute store result storage temp:recap placement_r1 int 1 run scoreboard players get @s tgttos_recap_r1
execute store result storage temp:recap placement_r2 int 1 run scoreboard players get @s tgttos_recap_r2
execute store result storage temp:recap placement_r3 int 1 run scoreboard players get @s tgttos_recap_r3
execute store result storage temp:recap placement_r4 int 1 run scoreboard players get @s tgttos_recap_r4
execute store result storage temp:recap placement_r5 int 1 run scoreboard players get @s tgttos_recap_r5
execute store result storage temp:recap placement_r6 int 1 run scoreboard players get @s tgttos_recap_r6

function tgttos:player_action/play_recap_macro with storage temp:recap
