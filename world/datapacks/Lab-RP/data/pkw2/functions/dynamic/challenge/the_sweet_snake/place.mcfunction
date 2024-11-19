
tellraw @s ["已生成动态关: ","§ethe_sweet_snake"]
kill @e[type=marker,tag=pw_dynamic,tag=the_sweet_snake]
summon marker ~ ~-1 ~ {Tags:["the_sweet_snake","var1","pw_dynamic"]}