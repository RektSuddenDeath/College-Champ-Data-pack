
tellraw @s ["已生成动态关: ","§ethe_neo_run"]
kill @e[type=marker,tag=pw_dynamic,tag=the_neo_run]
summon marker ~ ~-1 ~ {Tags:["the_neo_run","var1","pw_dynamic"]}