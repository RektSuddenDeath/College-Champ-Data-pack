
tellraw @s ["已生成动态关: ","§ethe_pad_swap"]
kill @e[type=marker,tag=pw_dynamic,tag=the_pad_swap]
summon marker ~ ~-1 ~ {Tags:["the_pad_swap","var1","pw_dynamic"]}