
execute as @a at @s run execute store result score @s pkw2_void run data get entity @s Pos[1]

tag @a[team=!spec,gamemode=adventure,scores={pkw2_void=0..79}] add pkw2_void

# Overtime
execute if score Overtime pkw2_game matches 1 run gamemode spectator @a[tag=pkw2_void]
execute if score Overtime pkw2_game matches 1 run tellraw @a[tag=pkw2_void] ["§c[","§r楒","§c] ","§7你在§c§l加时§7期间掉入虚空，无法重生！"]

# Not Overtime
execute if score Overtime pkw2_game matches 0 as @a[tag=pkw2_void] run function pkw2:checkpoint/tp
execute if score Overtime pkw2_game matches 0 as @a[tag=pkw2_void] run tellraw @s ["§c[§r梎§c] ","§c你掉入了虚空！将你传送回最后的传送点。"]

# Clean up
tag @a remove pkw2_void

schedule function pkw2:checkpoint/master 1t