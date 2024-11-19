
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  抓捕者和逃脱者均有道具来帮助自己赢得游戏: "
tellraw @a "  "
tellraw @a [{"text": ""},{"text": "逃脱者: ","color":"green"},{"text": "火眼金睛","color":"gold"},{"text": "    使对方的抓捕者发光，持续3秒，拥有2个。"}]
tellraw @a [{"text": ""},{"text": "抓捕者: ","color":"red"},{"text": "急速药水","color":"gold"},{"text": "    拥有一瓶速度 II （11秒）喷溅型药水"}]
tellraw @a "  "
tellraw @a [{"text": "  此外，抓捕者的移动速度比逃脱者快5%."}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10