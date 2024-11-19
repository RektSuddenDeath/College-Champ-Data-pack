
scoreboard players operation kill sg_stats -= killDecay sg_stats
scoreboard players operation survival sg_stats += survivalIncTimed sg_stats
tellraw @a ["","§6[§r瀞§6] ",{"text": "游戏已过半！击杀分已降低为","color": "#E98C00"},{"score":{"name": "kill","objective": "sg_stats"},"color": "#E3E3E3"},{"text": "分！","color": "#E98C00"}]

title @a times 10 60 10
title @a title ""
title @a subtitle "§c§l⇩ ⇩ §6§l击杀得分降低 §c§l⇩ ⇩"

scoreboard players set killDecay1 sg_game 1