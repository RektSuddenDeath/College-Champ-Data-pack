
tellraw @s ["已生成动态关: ","§ethe_two_gates"]
kill @e[type=marker,tag=pw_dynamic,tag=the_two_gates]
summon marker ~ ~-1 ~ {Tags:["the_two_gates","var1","pw_dynamic"]}