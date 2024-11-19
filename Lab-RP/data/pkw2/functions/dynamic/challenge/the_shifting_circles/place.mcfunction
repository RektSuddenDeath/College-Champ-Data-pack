
tellraw @s ["已生成动态关: ","§ethe_shifting_circles"]
kill @e[type=marker,tag=pw_dynamic,tag=the_shifting_circles]
summon marker ~ ~-1 ~ {Tags:["the_shifting_circles","var1","pw_dynamic"]}