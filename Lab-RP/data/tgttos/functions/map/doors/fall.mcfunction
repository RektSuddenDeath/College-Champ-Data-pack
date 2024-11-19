#  tag @a[team=!spec,gamemode=adventure,x=-6019,y=60,z=-6630,dx=50,dy=15,dz=162] add fallen

#  tp @a[tag=fallen] -5989 89.00 -6485.5 180 0
#  execute as @a[tag=fallen] run function tgttos:deathmsg

#  tag @a remove fallen
#  scoreboard players add deathmsg tgttos_game 1
#  execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
#  execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/doors/fall 1t