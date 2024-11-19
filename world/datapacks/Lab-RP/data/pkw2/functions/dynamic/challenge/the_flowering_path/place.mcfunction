
tellraw @s ["已生成动态关: ","§ethe_flowering_path"]
kill @e[type=marker,tag=pw_dynamic,tag=the_flowering_path]
summon marker ~ ~-1 ~ {Tags:["the_flowering_path","var1","pw_dynamic"]}