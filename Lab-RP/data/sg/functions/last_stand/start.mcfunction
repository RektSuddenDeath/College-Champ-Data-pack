tellraw @a ["","§c[§r鼱§c] ","§c§l决战模式已开始！所有玩家的最大生命值将被逐渐降低为1颗心，且不再自然恢复生命值！"]

execute as @a at @s run playsound minecraft:sound.mapupdate record @s
title @a times 5 20 5
title @a title "§c§l决战模式！"
title @a subtitle "全部玩家的生命值将被逐渐降低为1颗心！"

schedule clear sg:subtimer/loop
scoreboard players reset :§

scoreboard players set §2 sg_sb 13
scoreboard players set §2 sg_sb_red 13
scoreboard players set §2 sg_sb_blue 13
scoreboard players set §2 sg_sb_green 13
scoreboard players set §2 sg_sb_yellow 13
scoreboard players set §2 sg_sb_orange 13
scoreboard players set §2 sg_sb_pink 13
scoreboard players set §2 sg_sb_purple 13
scoreboard players set §2 sg_sb_cyan 13

team modify placeholder_2 suffix ""
team modify placeholder_2 prefix "§c§lLAST STAND"

bossbar set sg_timebar name ["",{"text": "6","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "75","font": "space:backspace"},{"text": "决战模式！ ","font": "hud_cs_offset_-2","color": "red"}]


execute in sg:sjtu run gamerule naturalRegeneration false
execute in sg:sjtu run worldborder add -3 60
execute in sg:sjtu run worldborder damage amount 999999999
scoreboard players set laststandTicks sg_game 0
scoreboard players set laststandAmount sg_game 0
scoreboard players set currentMaxHealth sg_game 20
function sg:last_stand/loop