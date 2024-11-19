
tellraw @s ["已生成动态关: ","§ethe_twin_beams"]
kill @e[type=marker,tag=pw_dynamic,tag=the_twin_beams]
summon marker ~ ~-1 ~ {Tags:["the_twin_beams","var1","pw_dynamic"]}