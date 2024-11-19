

# Playsound
execute as @a[team=cyan] at @s run stopsound @s * gr.loop
execute as @a[team=cyan] at @s run playsound gr.coursecomp record @s
execute as @a[team=!cyan] at @s run playsound gr.enemycomp record @s
tag @a[team=cyan] add gr_stopmusic
# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] gr_coursetime = ms gr_totaltime
# Calculate Position, and update scoreboard
scoreboard players add cyan gr_completeroom 1
scoreboard players add 9 gr_indvroom 1
function gr:scoreboard/moveup/cyan
scoreboard players operation cyan gr_currentpos = 9 gr_indvroom
function gr:scoreboard/calc

# Announce position
execute if score sec gr_totaltime matches 0..9 run tellraw @a[team=cyan] ["","§7你第",{"score":{"name": "9","objective": "gr_indvroom"},"color":"aqua"},"§7个完成了全部比赛！用时",{"score":{"name": "min","objective": "gr_totaltime"},"color": "gold"},"§6:0",{"score":{"name": "sec","objective": "gr_totaltime"},"color":"gold"}]
execute if score sec gr_totaltime matches 10..59 run tellraw @a[team=cyan] ["","§7你第",{"score":{"name": "9","objective": "gr_indvroom"},"color":"aqua"},"§7个完成了全部比赛！用时",{"score":{"name": "min","objective": "gr_totaltime"},"color": "gold"},"§6:",{"score":{"name": "sec","objective": "gr_totaltime"},"color":"gold"}]
execute if score sec gr_totaltime matches 0..9 run tellraw @a[team=!cyan] ["","§3青队§7第",{"score":{"name": "9","objective": "gr_indvroom"},"color":"aqua"},"§7个完成了全部比赛！用时",{"score":{"name": "min","objective": "gr_totaltime"},"color": "gold"},"§6:0",{"score":{"name": "sec","objective": "gr_totaltime"},"color":"gold"}]
execute if score sec gr_totaltime matches 10..59 run tellraw @a[team=!cyan] ["","§3青队§7第",{"score":{"name": "9","objective": "gr_indvroom"},"color":"aqua"},"§7个完成了全部比赛！用时",{"score":{"name": "min","objective": "gr_totaltime"},"color": "gold"},"§6:",{"score":{"name": "sec","objective": "gr_totaltime"},"color":"gold"}]
# Cleanup things for cyan team
scoreboard players add cyan gr_teamphase 1
kill @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor]

# Overtime?
execute if score overtime gr_game matches 1 run scoreboard players operation cyan gr_ot_reduce = reducedScore gr_game
execute if score overtime gr_game matches 1 run tellraw @a[team=cyan] ["[§6§lGrid Runners§f]: ","你的队伍使用了§6加时§f的",{"score":{"name": "overtimesec","objective": "gr_game"},"color": "gold"},"§f秒来完成挑战，因此游戏得分将降低",{"score":{"name": "reducedScore","objective": "gr_game"},"color": "red"},"!"]


# Add an progress to team completed
scoreboard players add completed gr_game 1
execute if score completed gr_game >= total gr_game run function gr:end