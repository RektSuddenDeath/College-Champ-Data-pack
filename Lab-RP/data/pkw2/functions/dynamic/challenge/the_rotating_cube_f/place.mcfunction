
tellraw @s ["已生成动态关: ","§ethe_rotating_cube_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_rotating_cube_f]
summon marker ~ ~-1 ~ {Tags:["the_rotating_cube_f","var1","pw_dynamic"]}