
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a ["  ",{"text":"以下是此地图及比赛的游玩须知","bold": true,"color": "yellow"}]
tellraw @a " "
tellraw @a " "
tellraw @a ["  播放完后继续游玩则视为你同意此须知和其中要求。"]
tellraw @a ""
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

schedule function master:tos/1 4s
schedule function master:tos/2 12s
schedule function master:tos/3 20s
schedule function master:tos/4 28s
schedule function master:tos/5 36s
schedule function master:tos/6 44s
schedule function master:tos/7 52s
schedule function master:tos/8 60s