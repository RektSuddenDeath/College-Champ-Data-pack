
tellraw @s ["已生成动态关: ","§ethe_dropping_ledge_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_dropping_ledge_f]
summon marker ~ ~-1 ~ {Tags:["the_dropping_ledge_f","var1","pw_dynamic"]}