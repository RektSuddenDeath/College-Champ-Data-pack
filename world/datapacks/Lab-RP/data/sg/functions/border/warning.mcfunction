tellraw @a ["","§6[§r獍§6] ","§6边界即将在",{"text": "30","color": "#E3E3E3"},"§6秒后收缩。"]

execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s
title @a times 5 40 5
title @a title ""
title @a subtitle ["",{"text":"边界即将收缩","color":"gold"}]