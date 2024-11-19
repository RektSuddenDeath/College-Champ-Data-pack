
tellraw @s ["已生成动态关: ","§ethe_dropping_sides_2"]
kill @e[type=marker,tag=pw_dynamic,tag=the_dropping_sides_2]
summon marker ~ ~-1 ~ {Tags:["the_dropping_sides_2","var1","pw_dynamic"]}