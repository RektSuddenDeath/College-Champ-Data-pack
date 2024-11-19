
tellraw @s ["已生成动态关: ","§ecandy_connection"]
kill @e[type=marker,tag=pw_dynamic,tag=candy_connection]
summon marker ~ ~-1 ~ {Tags:["candy_connection","var1","pw_dynamic"]}