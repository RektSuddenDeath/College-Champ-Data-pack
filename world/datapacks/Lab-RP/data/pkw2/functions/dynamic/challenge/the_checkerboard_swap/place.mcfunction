
tellraw @s ["已生成动态关: ","§ethe_checkerboard_swap"]
kill @e[type=marker,tag=pw_dynamic,tag=the_checkerboard_swap]
summon marker ~ ~-1 ~ {Tags:["the_checkerboard_swap","var1","pw_dynamic"]}