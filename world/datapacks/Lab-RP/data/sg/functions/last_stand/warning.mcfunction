tellraw @a ["","§c[§r鼱§c] ","§c§l决战模式将在15秒后开始！ 所有玩家的最大生命值将被逐渐降低为1颗心，且不再自然恢复生命值！"]

execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s
title @a times 5 40 5
title @a title ""
title @a subtitle ["",{"text":"决战模式即将开始","color":"red"}]