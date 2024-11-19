
tellraw @s ["已生成动态关: ","§ethe_tiny_plates"]
kill @e[type=marker,tag=pw_dynamic,tag=the_tiny_plates]
summon marker ~ ~-1 ~ {Tags:["the_tiny_plates","var1","pw_dynamic"]}