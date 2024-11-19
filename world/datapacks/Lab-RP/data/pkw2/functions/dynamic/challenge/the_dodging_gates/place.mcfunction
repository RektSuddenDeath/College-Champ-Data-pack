
tellraw @s ["已生成动态关: ","§eTHE_DODGING_GATES"]
kill @e[type=marker,tag=pw_dynamic,tag=the_dodging_gates]
summon marker ~ ~-1 ~ {Tags:["the_dodging_gates","var1","pw_dynamic"]}