
execute as @e[type=armor_stand,name="Intro"] at @s run tp @s ~ ~ ~0.05
execute as @e[type=armor_stand,name="Intro"] run spectate @s @r[distance=0.1..]
schedule function acerace2:intro/1a 1t
