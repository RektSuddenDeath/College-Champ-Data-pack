 tag @a[team=!spec,gamemode=adventure,x=-6022,y=120,z=-6133,dx=64,dy=10,dz=186] add fallen

 tp @a[tag=fallen] -6000 202.00 -5999 -180 0
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/skydive/fall 1t