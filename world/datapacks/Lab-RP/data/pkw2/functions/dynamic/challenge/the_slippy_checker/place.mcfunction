
tellraw @s ["已生成动态关: ","§ethe_slippy_checker"]
kill @e[type=marker,tag=pw_dynamic,tag=the_slippy_checker]
summon marker ~ ~-1 ~ {Tags:["the_slippy_checker","var1","pw_dynamic"]}