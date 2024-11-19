
title @s times 10 60 10
title @s title "§c被逃脱！"
title @s subtitle "§c下次动作要更快一点！"

execute at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:sound.team_eliminated record @s ~ ~ ~ 1 1
