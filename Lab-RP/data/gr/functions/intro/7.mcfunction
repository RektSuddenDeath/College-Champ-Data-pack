 
 tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §e§l游戏积分方式"
tellraw @a ["  ",{"text": "- 比你的对手更快完成各个房间","hoverEvent": {"action":"show_text","contents": ["",{"text": "在游戏结束时将根据各个队伍各个房间完成的速度分别积分。"},"\n",{"text":"- 第一个完成的队伍: §a168"},"\n",{"text": "- 每名次递减: §c20"},"\n\n","Scores are paid out per room when the game ends.","\n","- First team to finish: §a168\n","- Score deducted for every subsequent finish:§c 20"]}}]
tellraw @a " "
tellraw @a ["  ",{"text": "- 比你的对手更快完成整场比赛","hoverEvent":{"action": "show_text","contents": ["",{"text": "根据完成全场游戏的先后积分。"},"\n","第1-8名：§a520/440/376/328/288/240/192/144分"]}}]
tellraw @a " "
tellraw @a "  §7请将鼠标移到对应积分项目上以查看详情。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10