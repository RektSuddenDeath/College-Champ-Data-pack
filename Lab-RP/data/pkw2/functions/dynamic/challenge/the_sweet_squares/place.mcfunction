
tellraw @s ["已生成动态关: ","§ethe_sweet_squares"]
kill @e[type=marker,tag=pw_dynamic,tag=the_sweet_squares]
summon marker ~ ~-1 ~ {Tags:["the_sweet_squares","var1","pw_dynamic"]}