
execute as @a at @s run playsound sound.generalshrinkwarn record @s
title @a times 10 40 10
title @a title "§c游戏即将开始"
title @a subtitle "请将购买的东西存入场地中心的末影箱！"
tellraw @a "§6游戏即将开始，请将购买的东西存入场地中心的末影箱！§c未放入末影箱的物资将会丢失！"
scoreboard players set timeout_warn_remix bb_game 1