
# test
#item replace entity @s armor.feet with leather_boots
##schedule function pkw2:nearby/loop 1t

scoreboard players set @a pkw2_nearby_5 0
scoreboard players set @a pkw2_nearby_8 0
execute as @a[gamemode=adventure] at @s run scoreboard players add @a[gamemode=adventure,distance=0..5] pkw2_nearby_5 1
execute as @a[gamemode=adventure] at @s run scoreboard players add @a[gamemode=adventure,distance=0..8] pkw2_nearby_8 1

execute as @a[scores={pkw2_nearby_5=2..},gamemode=adventure] run effect give @s invisibility infinite 0 true
execute as @a[scores={pkw2_nearby_5=2..},gamemode=adventure] run effect clear @s glowing

execute as @a[scores={pkw2_nearby_8=2..,pkw2_nearby_5=..1},gamemode=adventure] run effect give @s invisibility infinite 0 true
execute as @a[scores={pkw2_nearby_8=2..,pkw2_nearby_5=..1},gamemode=adventure] run effect give @s glowing infinite 0 true

execute as @a[scores={pkw2_nearby_8=..1},gamemode=adventure] run effect clear @s invisibility
execute as @a[scores={pkw2_nearby_8=..1},gamemode=adventure] run effect clear @s glowing

execute as @a[gamemode=spectator] run effect clear @s invisibility
execute as @a[gamemode=spectator] run effect clear @s glowing

execute if score gameflag pkw2_game matches 1 run schedule function pkw2:nearby/loop 6t

