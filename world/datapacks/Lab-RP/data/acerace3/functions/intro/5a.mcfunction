

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  积分标准","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a [{"text":"  - 第一个完赛: ","color":"white"},{"text":"256","color":"green"}]
tellraw @a [{"text":"  - 后完赛每名完赛分减少: ","color":"white"},{"text":"8","color":"red"}]
tellraw @a ["  -",{"text": " 前5名额外奖励: "},{"text": "120/70/40/30/20","color":"green"}]
tellraw @a ["  -",{"text": " 第6-10/11-16名额外奖励: "},{"text": "10/5","color":"green"}]
tellraw @a ["  - ",{"text": "各区域根据玩家的最好成绩额外积分","underlined":true,"hoverEvent": {"action":"show_text","value": "- 每个区域的第一名固定获得§e50§f分\n- 其余玩家根据与第1名的时间差，最多得§e35§f分"}}]
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]