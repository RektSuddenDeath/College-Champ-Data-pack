
execute as @e[type=interaction,tag=meltdown_heater] at @s run function meltdown:unfreeze/heater_break

execute if score AlivePlayers meltdown_game matches 0 run function meltdown:end
execute if score gameflag meltdown_game matches 0 run return 1
execute if score centre_crate_unlocked meltdown_game matches 1 if score round meltdown_game matches 1 if blocks 60607 231 60590 60605 230 60592 60605 -32 60592 all run function meltdown:end
execute if score centre_crate_unlocked meltdown_game matches 1 if score round meltdown_game matches 2 if blocks 61119 231 60590 61117 230 60592 61117 -32 60592 all run function meltdown:end
execute if score centre_crate_unlocked meltdown_game matches 1 if score round meltdown_game matches 3 if blocks 61631 231 60590 61629 230 60592 61629 -32 60592 all run function meltdown:end


execute if score gameflag meltdown_game matches 1 run schedule function meltdown:prepare_end 1t