
advancement revoke @s through sot:root
execute if entity @s[tag=sot_key_obtained_blue] run return 0
tellraw @a[tag=admin] ["",{"selector":"@s"},"§6获取了","§9蓝色钥匙"]
title @s title ""
title @s subtitle ["+1 ","§9蓝色钥匙"]
title @s times 0 20 20
tag @s add sot_key_obtained_blue
execute at @s run playsound sound.sands_of_time.key_pickup record @s