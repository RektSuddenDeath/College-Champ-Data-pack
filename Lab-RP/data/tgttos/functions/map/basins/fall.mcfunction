 tag @a[team=!spec,gamemode=adventure,x=-6598,y=70,z=-6043,dx=188,dy=15,dz=100] add fallen

 tp @a[tag=fallen] -6573 113.00 -5993 270 0
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/basins/fall 1t