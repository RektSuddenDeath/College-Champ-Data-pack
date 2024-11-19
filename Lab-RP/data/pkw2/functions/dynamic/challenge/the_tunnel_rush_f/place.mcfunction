
tellraw @s ["已生成动态关: ","§ethe_tunnel_rush_f"]
kill @e[type=marker,tag=pw_dynamic,tag=the_tunnel_rush_f]
summon marker ~ ~-1 ~ {Tags:["the_tunnel_rush_f","var1","pw_dynamic"]}