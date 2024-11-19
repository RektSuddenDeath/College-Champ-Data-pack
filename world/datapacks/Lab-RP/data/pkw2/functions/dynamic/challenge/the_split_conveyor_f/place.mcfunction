
tellraw @s ["已生成动态关: ","§ethe_split_conveyor_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_split_conveyor_f]
summon marker ~ ~-1 ~ {Tags:["the_split_conveyor_f","var1","pw_dynamic"]}