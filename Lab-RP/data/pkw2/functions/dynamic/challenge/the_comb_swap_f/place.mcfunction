
tellraw @s ["已生成动态关: ","§ethe_comb_swap_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_comb_swap_f]
summon marker ~ ~-1 ~ {Tags:["the_comb_swap_f","var1","pw_dynamic"]}