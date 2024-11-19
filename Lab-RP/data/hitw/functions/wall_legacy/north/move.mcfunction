
# fill


fill -4993 117 -4992 -5006 112 -4992 air



# execute at @s unless block ~2 ~ ~1 slime_block unless block ~-1 ~ ~1 slime_block run kill @s
execute at @s if block ~ ~ ~13 purple_concrete run scoreboard players add @a[tag=hitw_alive] hitw_round_dodged 1
execute at @s if block ~ ~ ~13 purple_concrete run kill @s
#execute at @s if block ~ ~ ~12 purple_concrete run kill @s

execute if entity @s at @s if block ~-1 ~ ~1 slime_block run setblock ~-1 ~ ~ piston[facing=south]
execute if entity @s at @s if block ~-3 ~ ~1 slime_block run setblock ~-3 ~ ~ piston[facing=south]
execute if entity @s at @s if block ~-5 ~ ~1 slime_block run setblock ~-5 ~ ~ piston[facing=south]
execute if entity @s at @s if block ~2 ~ ~1 slime_block run setblock ~2 ~ ~ piston[facing=south]
execute if entity @s at @s if block ~4 ~ ~1 slime_block run setblock ~4 ~ ~ piston[facing=south]
execute if entity @s at @s if block ~6 ~ ~1 slime_block run setblock ~6 ~ ~ piston[facing=south]

execute if entity @s at @s if block ~-1 ~ ~1 slime_block run setblock ~-1 ~ ~-1 warped_button[powered=true,facing=north]
execute if entity @s at @s if block ~-3 ~ ~1 slime_block run setblock ~-3 ~ ~-1 warped_button[powered=true,facing=north]
execute if entity @s at @s if block ~-5 ~ ~1 slime_block run setblock ~-5 ~ ~-1 warped_button[powered=true,facing=north]
execute if entity @s at @s if block ~2 ~ ~1 slime_block run setblock ~2 ~ ~-1 warped_button[powered=true,facing=north]
execute if entity @s at @s if block ~4 ~ ~1 slime_block run setblock ~4 ~ ~-1 warped_button[powered=true,facing=north]
execute if entity @s at @s if block ~6 ~ ~1 slime_block run setblock ~6 ~ ~-1 warped_button[powered=true,facing=north]

execute at @s run tp @s ~ ~ ~1

