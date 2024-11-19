
scoreboard players set pause master.timer 0
scoreboard players add second master.timer 1
tellraw @a [{"text":"游戏计时已继续！","color":"green","bold":true}]

title @a actionbar ""