
tp @a[gamemode=adventure] -9999.72 117.00 -10027.96 360 0
summon lightning_bolt -10000 0 -10000

execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

clear @a[gamemode=adventure]
title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@s"}," §e使用了§r护法之誓"]

tellraw @a ["","[","§e▶","] ",{"selector":"@s"}," §d使用了§r护法之誓§d！ 将所有人消灭了！"]