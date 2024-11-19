
tellraw @s ["已生成动态关: ","§ethe_sideways_skip"]
kill @e[type=marker,tag=pw_dynamic,tag=the_sideways_skip]
summon marker ~ ~-1 ~ {Tags:["the_sideways_skip","var1","pw_dynamic"]}