 tag @a[team=!spec,gamemode=adventure,x=-7010,y=68,z=-7018,dx=65,dy=15,dz=61] add fallen

 tp @a[tag=fallen] -6940 110 -6984 -270 0
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/industry/fall 1t