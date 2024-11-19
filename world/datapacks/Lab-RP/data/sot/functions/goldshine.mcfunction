
execute as @e[type=item,tag=score] at @s run particle minecraft:wax_on ~ ~0.2 ~ 0.3 0.2 0.3 0 3

execute if score gameflag SotGame matches 1 run schedule function sot:goldshine 15t