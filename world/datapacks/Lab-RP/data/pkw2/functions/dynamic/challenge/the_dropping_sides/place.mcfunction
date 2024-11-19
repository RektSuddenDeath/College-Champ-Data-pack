
tellraw @s ["已生成动态关: ","§ethe_dropping_sides"]
kill @e[type=marker,tag=pw_dynamic,tag=the_dropping_sides]
summon marker ~ ~-1 ~ {Tags:["the_dropping_sides","var1","pw_dynamic"]}