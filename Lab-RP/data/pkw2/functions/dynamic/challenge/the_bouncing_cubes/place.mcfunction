
tellraw @s ["已生成动态关: ","§ethe_bouncing_cubes"]
kill @e[type=marker,tag=pw_dynamic,tag=the_bouncing_cubes]
summon marker ~ ~-1 ~ {Tags:["the_bouncing_cubes","var1","pw_dynamic"]}