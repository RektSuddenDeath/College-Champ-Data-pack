
tellraw @s ["已生成动态关: ","§ethe_bending_blink"]
kill @e[type=marker,tag=pw_dynamic,tag=the_bending_blink]
summon marker ~ ~-1 ~ {Tags:["the_bending_blink","var1","pw_dynamic"]}