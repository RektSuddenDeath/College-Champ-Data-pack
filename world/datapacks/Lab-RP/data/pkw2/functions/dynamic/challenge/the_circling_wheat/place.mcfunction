
tellraw @s ["已生成动态关: ","§ethe_circling_wheat"]
kill @e[type=marker,tag=pw_dynamic,tag=the_circling_wheat]
summon marker ~ ~-1 ~ {Tags:["the_circling_wheat","var1","pw_dynamic"]}