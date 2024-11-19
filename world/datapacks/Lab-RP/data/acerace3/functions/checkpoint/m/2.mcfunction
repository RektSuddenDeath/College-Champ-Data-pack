
execute if score @s ar_laps matches 1 run function acerace3:checkpoint/disp_nt/2
execute if score @s ar_laps matches 2..4 run function acerace3:checkpoint/disp/2
scoreboard players set @s ar_cp 2