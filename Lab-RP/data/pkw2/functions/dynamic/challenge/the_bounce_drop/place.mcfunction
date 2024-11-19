
tellraw @s ["已生成动态关: ","§ethe_bounce_drop"]
kill @e[type=marker,tag=pw_dynamic,tag=the_bounce_drop]
summon marker ~ ~-1 ~ {Tags:["the_bounce_drop","var1","pw_dynamic"]}