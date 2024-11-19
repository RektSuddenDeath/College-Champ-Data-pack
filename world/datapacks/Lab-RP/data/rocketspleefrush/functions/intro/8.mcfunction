execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a ""
tellraw @a ["  ",{"text": "游戏积分方式","bold": true,"color":"yellow"}]
tellraw @a ""
tellraw @a ["  ",{"text": "- 每有一名玩家在你之前掉入虚空: "},{"text": "4","color":"green"}]
tellraw @a ["  ",{"text": "- 击杀对手: "},{"score":{"name": "killbonus","objective": "rsr_game"},"color": "green"}]
tellraw @a ""
tellraw @a ["  ",{"text": "- 前8名额外加分: "},{"text": "160/120/100/80/60/50/40/30","color":"green"}]
tellraw @a ["  ",{"text": "若有多名玩家存活至最后，则高度越高排名越靠前。","color":"gray","italic": true}]
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]