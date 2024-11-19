
tellraw @s ["已生成动态关: ","§ethe_leaping_bridge_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_leaping_bridge_f]
summon marker ~ ~-1 ~ {Tags:["the_leaping_bridge_f","var1","pw_dynamic"]}