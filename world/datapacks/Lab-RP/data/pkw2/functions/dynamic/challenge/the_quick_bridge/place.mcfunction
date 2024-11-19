
tellraw @s ["已生成动态关: ","§ethe_quick_bridge"]
kill @e[type=marker,tag=pw_dynamic,tag=the_quick_bridge]
summon marker ~ ~-1 ~ {Tags:["the_quick_bridge","var1","pw_dynamic"]}