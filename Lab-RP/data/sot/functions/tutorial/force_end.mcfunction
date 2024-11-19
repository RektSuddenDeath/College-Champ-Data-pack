
tellraw @a[team=!spec,tag=!sot_tutorial_complete] "§b游戏即将开始，你已被移动到游戏地图中。"

execute as @a[team=red,tag=!sot_tutorial_complete] run function sot:tutorial/red/transfer
execute as @a[team=blue,tag=!sot_tutorial_complete] run function sot:tutorial/blue/transfer
execute as @a[team=green,tag=!sot_tutorial_complete] run function sot:tutorial/green/transfer
execute as @a[team=yellow,tag=!sot_tutorial_complete] run function sot:tutorial/yellow/transfer
execute as @a[team=cyan,tag=!sot_tutorial_complete] run function sot:tutorial/cyan/transfer
execute as @a[team=pink,tag=!sot_tutorial_complete] run function sot:tutorial/pink/transfer
execute as @a[team=orange,tag=!sot_tutorial_complete] run function sot:tutorial/orange/transfer
execute as @a[team=purple,tag=!sot_tutorial_complete] run function sot:tutorial/purple/transfer


tag @a remove sot_tutorial_complete
scoreboard players set tutorialActive SotGame 0

# Hide Away Bossbar
scoreboard players set time_bar_active tourney_stats 0

bossbar set sot_tutorial_timer visible false