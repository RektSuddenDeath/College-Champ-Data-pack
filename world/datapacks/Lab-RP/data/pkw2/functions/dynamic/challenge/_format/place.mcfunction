
tellraw @s ["已生成动态关: ","§eSTAGE_NAME"]
kill @e[type=marker,tag=pw_dynamic,tag=stage_name]
summon marker ~ ~-1 ~ {Tags:["stage_name","var1","pw_dynamic"]}