
tellraw @s ["已生成动态关: ","§ethe_stacked_pass"]
kill @e[type=marker,tag=pw_dynamic,tag=the_stacked_pass]
summon marker ~ ~-1 ~ {Tags:["the_stacked_pass","var1","pw_dynamic"]}