
tellraw @s ["已生成动态关: ","§ethe_domino_rush"]
kill @e[type=marker,tag=pw_dynamic,tag=the_domino_rush]
summon marker ~ ~-1 ~ {Tags:["the_domino_rush","var1","pw_dynamic"]}