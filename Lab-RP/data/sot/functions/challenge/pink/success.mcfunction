

scoreboard players set pink SotChalProgress 99999999
scoreboard players set pink SotChalTime 0
tellraw @a ["",{"translate":"team.pink"},"§e完成了限时挑战！"]
tellraw @a[team=pink] ["",{"selector":"@a[team=pink,tag=sotChallenger]"},"§e完成了限时挑战！"]
title @a[team=pink,tag=sotChallenger] times 10 40 10
title @a[team=pink,tag=sotChallenger] title "§a挑战成功！"
title @a[team=pink,tag=sotChallenger] subtitle "点击开始时的按钮以领取奖励。"

fill ~1 ~2 ~11 ~-1 ~-1 ~11 air
setblock ~ ~ ~ oak_button[face=floor]
summon area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["sotmapanchors","pinktext"],CustomName:'"§6140金币§r+§b全队获得32根箭"',CustomNameVisible:1b}
execute as @a[team=pink,tag=sotChallenger] at @s run playsound minecraft:sound.majoracquire record @s