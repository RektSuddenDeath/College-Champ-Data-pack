
tellraw @s ["已生成动态关: ","§ethe_crossing_chain"]
kill @e[type=marker,tag=pw_dynamic,tag=the_crossing_chain]
summon marker ~ ~-1 ~ {Tags:["the_crossing_chain","var1","pw_dynamic"]}