 tag @a[team=!spec,gamemode=adventure,x=-6019,y=60,z=-6630,dx=50,dy=15,dz=162] add fallen

 tp @a[tag=fallen] -6492 101.00 -7000 -270.00 0
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/grid/fall 1t