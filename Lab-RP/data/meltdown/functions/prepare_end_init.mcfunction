

scoreboard players set preparing_end meltdown_game 1

# Break All Heaters
execute as @e[type=interaction,tag=meltdown_heater] at @s run function meltdown:unfreeze/heater_break

# Unfreeze All Remaining Players
execute as @a[tag=meltdown_frozen,scores={meltdown_team_frozen_delay=-1}] run function meltdown:unfreeze/self

# Different End Reasons
execute if score AlivePlayers meltdown_game matches 0 run function meltdown:end
execute if score gameflag meltdown_game matches 0 run return 1
execute if score centre_crate_unlocked meltdown_game matches 0 run function meltdown:end

execute if score gameflag meltdown_game matches 0 run return 1
execute if score centre_crate_unlocked meltdown_game matches 1 if score round meltdown_game matches 1 if blocks 60607 231 60590 60605 230 60592 60605 -32 60592 all run function meltdown:end
execute if score centre_crate_unlocked meltdown_game matches 1 if score round meltdown_game matches 2 if blocks 61119 231 60590 61117 230 60592 61117 -32 60592 all run function meltdown:end
execute if score centre_crate_unlocked meltdown_game matches 1 if score round meltdown_game matches 3 if blocks 61631 231 60590 61629 230 60592 61629 -32 60592 all run function meltdown:end
execute if score gameflag meltdown_game matches 0 run return 1
title @a times 10 40 10
title @a title "§a§l最后一队！"
title @a subtitle "收获中心的全部奖励箱吧！"
function meltdown:prepare_end