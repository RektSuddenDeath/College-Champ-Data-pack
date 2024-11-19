
execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~ ~-2 ~ glass
execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~ ~-1 ~ purpur_block
execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~1 ~ ~ air
execute as @e[type=marker,tag=airdrop_selected] at @s run kill @e[type=text_display,distance=0..4,tag=airdrop_hologram]
execute as @e[type=marker,tag=airdrop_selected] at @s run tag @s remove airdrop_selected