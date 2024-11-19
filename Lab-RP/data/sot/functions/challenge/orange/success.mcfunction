

scoreboard players set orange SotChalProgress 99999999
scoreboard players set orange SotChalTime 0
tellraw @a ["",{"translate":"team.orange"},"§e完成了限时挑战！"]
tellraw @a[team=orange] ["",{"selector":"@a[team=orange,tag=sotChallenger]"},"§e完成了限时挑战！"]
title @a[team=orange,tag=sotChallenger] times 10 40 10
title @a[team=orange,tag=sotChallenger] title "§a挑战成功！"
title @a[team=orange,tag=sotChallenger] subtitle "点击开始时的按钮以领取奖励。"

fill ~1 ~2 ~11 ~-1 ~-1 ~11 air
setblock ~ ~ ~ oak_button[face=floor]
summon area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["sotmapanchors","orangetext"],CustomName:'"§6140金币§r+§b全队获得32根箭"',CustomNameVisible:1b}
execute as @a[team=orange,tag=sotChallenger] at @s run playsound minecraft:sound.majoracquire record @s