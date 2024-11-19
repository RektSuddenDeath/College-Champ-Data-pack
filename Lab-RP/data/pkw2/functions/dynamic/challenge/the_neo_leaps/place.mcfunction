
tellraw @s ["已生成动态关: ","§ethe_neo_leaps"]
kill @e[type=marker,tag=pw_dynamic,tag=the_neo_leaps]
summon marker ~ ~-1 ~ {Tags:["the_neo_leaps","var1","pw_dynamic"]}