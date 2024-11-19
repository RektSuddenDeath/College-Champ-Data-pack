
# 这个函数将会初始化排名功能。

scoreboard objectives remove Sort
scoreboard objectives remove mvprank

scoreboard objectives add Sort dummy
scoreboard objectives add mvprank dummy

scoreboard players set Step mvprank 1
scoreboard players set Total mvprank 0
execute as @a[team=!spec] run scoreboard players add Total mvprank 1

function utils:calculaterank