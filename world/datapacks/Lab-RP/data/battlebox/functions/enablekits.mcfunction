
#region Reset kit selections
execute as @e[type=marker,tag=battlebox_kitwall] at @s run fill ~ ~ ~ ~ ~4 ~ green_terracotta
#endregion

scoreboard players set red bb_kit1 1
scoreboard players set blue bb_kit1 1
scoreboard players set green bb_kit1 1
scoreboard players set yellow bb_kit1 1
scoreboard players set cyan bb_kit1 1
scoreboard players set orange bb_kit1 1
scoreboard players set pink bb_kit1 1
scoreboard players set purple bb_kit1 1

scoreboard players set red bb_kit2 1
scoreboard players set blue bb_kit2 1
scoreboard players set green bb_kit2 1
scoreboard players set yellow bb_kit2 1
scoreboard players set cyan bb_kit2 1
scoreboard players set orange bb_kit2 1
scoreboard players set pink bb_kit2 1
scoreboard players set purple bb_kit2 1

scoreboard players set red bb_kit3 1
scoreboard players set blue bb_kit3 1
scoreboard players set green bb_kit3 1
scoreboard players set yellow bb_kit3 1
scoreboard players set cyan bb_kit3 1
scoreboard players set orange bb_kit3 1
scoreboard players set pink bb_kit3 1
scoreboard players set purple bb_kit3 1

scoreboard players set red bb_kit4 1
scoreboard players set blue bb_kit4 1
scoreboard players set green bb_kit4 1
scoreboard players set yellow bb_kit4 1
scoreboard players set cyan bb_kit4 1
scoreboard players set orange bb_kit4 1
scoreboard players set pink bb_kit4 1
scoreboard players set purple bb_kit4 1

tag @a[team=!spec] add bb_nokit