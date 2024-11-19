
# Kill Dropped boats
kill @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}]

# Tags all boats inside the map
tag @e[type=boat,x=-8000,y=90,z=-7050,dx=500,dy=100,dz=700] add tgttos

# Identify players who are on a boat
execute as @a if predicate tgttos:is_on_boat run clear @s oak_boat
execute as @a if predicate tgttos:is_on_boat run tag @s add hadBeenOnBoat

execute as @a[tag=hadBeenOnBoat] unless predicate tgttos:is_on_boat run give @s oak_boat
execute as @a[tag=hadBeenOnBoat] unless predicate tgttos:is_on_boat run tag @s remove hadBeenOnBoat

# Identify Boats that were rode by a player
execute as @e[type=boat] if predicate tgttos:player_passenger run tag @s add hadPlayer
execute as @e[type=boat,tag=hadPlayer] unless predicate tgttos:player_passenger run kill @s

# Give Attack Damage
execute as @e[type=chicken] at @s run execute as @a[team=!spec,distance=0..7] run attribute @s generic.attack_damage base set 1000
# Loop
execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/boats/core 1t