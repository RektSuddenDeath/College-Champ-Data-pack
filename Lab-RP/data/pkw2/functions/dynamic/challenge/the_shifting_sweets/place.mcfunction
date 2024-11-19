
tellraw @s ["已生成动态关: ","§ethe_shifting_sweets"]
kill @e[type=marker,tag=pw_dynamic,tag=the_shifting_sweets]
summon marker ~ ~-1 ~ {Tags:["the_shifting_sweets","var1","pw_dynamic"]}