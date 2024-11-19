fill -12492 104 -12497 -12509 106 -12499 air
# Instantly fall
execute as @e[type=falling_block,x=-13000,y=0,z=-13000,dx=1000,dy=320,dz=1000] run data modify entity @s Motion[1] set value -0.75d
execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/breakdown/spawnprot 1t