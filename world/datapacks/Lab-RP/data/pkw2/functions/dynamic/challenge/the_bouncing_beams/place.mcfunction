
tellraw @s ["已生成动态关: ","§ethe_bouncing_beams"]
kill @e[type=marker,tag=pw_dynamic,tag=the_bouncing_beams]
summon marker ~ ~-1 ~ {Tags:["the_bouncing_beams","var1","pw_dynamic"]}