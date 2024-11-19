
tellraw @s ["已生成动态关: ","§ethe_nasty_neo_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_nasty_neo_f]
summon marker ~ ~-1 ~ {Tags:["the_nasty_neo_f","var1","pw_dynamic"]}