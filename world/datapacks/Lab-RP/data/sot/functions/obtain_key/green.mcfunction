
advancement revoke @s through sot:root
execute if entity @s[tag=sot_key_obtained_green] run return 0
tellraw @a[tag=admin] ["",{"selector":"@s"},"§6获取了","§2绿色钥匙"]
title @s title ""
title @s subtitle ["+1 ","§2绿色钥匙"]
title @s times 0 20 20
tag @s add sot_key_obtained_green
execute at @s run playsound sound.sands_of_time.key_pickup record @s