
#function utils:text/hitw_spdinc
tellraw @a ["","§6[§r獍§6]"," §6墙的移动速度提升！"]
scoreboard players remove interval hitw_wall_ctrl 1
execute if score minute master.timer matches 2 if score second master.timer matches 30 run team modify placeholder_2 suffix "简单 / 114%"
execute if score minute master.timer matches 2 if score second master.timer matches 0 run team modify placeholder_2 suffix "中等 / 133%"
execute if score minute master.timer matches 1 if score second master.timer matches 30 run team modify placeholder_2 suffix "中等 / 160%"
execute if score minute master.timer matches 1 if score second master.timer matches 0 run team modify placeholder_2 suffix "困难 / 200%"
execute if score minute master.timer matches 0 if score second master.timer matches 30 run team modify placeholder_2 suffix "困难 / 267%"

execute as @a at @s run playsound minecraft:sound.hitwspeedincrease record @s

