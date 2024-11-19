
# fill


fill -5008 116 -5006 -5008 112 -4993 air



# execute at @s unless block ~2 ~ ~1 slime_block unless block ~-1 ~ ~1 slime_block run kill @s
execute at @s if block ~-13 ~ ~ green_concrete run scoreboard players add @a[tag=hitw_alive] hitw_round_dodged 1
execute at @s if block ~-13 ~ ~ green_concrete run kill @s
#execute at @s if block ~-12 ~ ~ green_concrete run kill @s

execute if entity @s at @s if block ~-1 ~ ~-1 slime_block run setblock ~ ~ ~-1 piston[facing=west]
execute if entity @s at @s if block ~-1 ~ ~-3 slime_block run setblock ~ ~ ~-3 piston[facing=west]
execute if entity @s at @s if block ~-1 ~ ~-5 slime_block run setblock ~ ~ ~-5 piston[facing=west]
execute if entity @s at @s if block ~-1 ~ ~2 slime_block run setblock ~ ~ ~2 piston[facing=west]
execute if entity @s at @s if block ~-1 ~ ~4 slime_block run setblock ~ ~ ~4 piston[facing=west]
execute if entity @s at @s if block ~-1 ~ ~6 slime_block run setblock ~ ~ ~6 piston[facing=west]

execute if entity @s at @s if block ~-1 ~ ~-1 slime_block run setblock ~1 ~ ~-1 warped_button[powered=true,facing=east]
execute if entity @s at @s if block ~-1 ~ ~-3 slime_block run setblock ~1 ~ ~-3 warped_button[powered=true,facing=east]
execute if entity @s at @s if block ~-1 ~ ~-5 slime_block run setblock ~1 ~ ~-5 warped_button[powered=true,facing=east]
execute if entity @s at @s if block ~-1 ~ ~2 slime_block run setblock ~1 ~ ~2 warped_button[powered=true,facing=east]
execute if entity @s at @s if block ~-1 ~ ~4 slime_block run setblock ~1 ~ ~4 warped_button[powered=true,facing=east]
execute if entity @s at @s if block ~-1 ~ ~6 slime_block run setblock ~1 ~ ~6 warped_button[powered=true,facing=east]

execute at @s run tp @s ~-1 ~ ~

