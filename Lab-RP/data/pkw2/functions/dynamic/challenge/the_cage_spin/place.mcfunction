
tellraw @s ["已生成动态关: ","§ethe_cage_spin"]
kill @e[type=marker,tag=pw_dynamic,tag=the_cage_spin]
summon marker ~ ~-1 ~ {Tags:["the_cage_spin","var1","pw_dynamic"]}