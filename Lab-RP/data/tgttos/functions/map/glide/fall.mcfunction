 tag @a[team=!spec,gamemode=adventure,x=-6505,y=60,z=-6512,dx=74,dy=19,dz=31] add fallen

 tp @a[tag=fallen] -6498 101 -6498 -90.0 0
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/glide/fall 1t