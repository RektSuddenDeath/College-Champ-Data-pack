
tellraw @s ["已生成动态关: ","§ethe_beam_dance"]
kill @e[type=marker,tag=pw_dynamic,tag=the_beam_dance]
summon marker ~ ~-1 ~ {Tags:["the_beam_dance","var1","pw_dynamic"]}