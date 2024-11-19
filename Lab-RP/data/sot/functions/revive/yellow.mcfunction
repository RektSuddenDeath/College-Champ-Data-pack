
# Is actually reviving? Check sand.
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if block ~-1 74 ~31 sand run scoreboard players set yellow SotReviving 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if block ~1 74 ~31 sand run scoreboard players set yellow SotReviving 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if block ~3 74 ~31 sand run scoreboard players set yellow SotReviving 1

# Remove a Death Status
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if block ~-1 74 ~31 sand run scoreboard players remove YellowDeaths SotGame 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if block ~1 74 ~31 sand run scoreboard players remove YellowDeaths SotGame 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if block ~3 74 ~31 sand run scoreboard players remove YellowDeaths SotGame 1

execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s run setblock ~-1 74 ~31 air
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s run setblock ~1 74 ~31 air
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s run setblock ~3 74 ~31 air

# Give kit to the dead teammate
execute if score yellow SotReviving matches 1 run scoreboard players remove @a[team=yellow] SotDeathKit 1
execute if score yellow SotReviving matches 1 run execute as @a[team=yellow,scores={SotDeathKit=0}] run function sot:deathkit

# Remove the tombstone and revive altar.
## Altar
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 0 run setblock ~3 73 ~31 blue_terracotta

execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 1 run setblock ~3 73 ~31 light_blue_wool
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 1 run setblock ~1 73 ~31 blue_terracotta

execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 2 run setblock ~3 73 ~31 blue_terracotta
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 2 run setblock ~1 73 ~31 light_blue_wool
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 2 run setblock ~-1 73 ~31 blue_terracotta
## Tombstone
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 0 run spawnpoint @a[team=yellow] ~3 75 ~33 180
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 0 run setblock ~3 75 ~32 air
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 0 run setblock ~3 76 ~32 air

execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 1 run spawnpoint @a[team=yellow] ~1 75 ~33 180
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 1 run setblock ~1 75 ~32 air
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 1 run setblock ~1 76 ~32 air

execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 2 run spawnpoint @a[team=yellow] ~-1 75 ~33 180
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 2 run setblock ~-1 75 ~32 air
execute if score yellow SotReviving matches 1 run execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s if score YellowDeaths SotGame matches 2 run setblock ~-1 76 ~32 air

scoreboard players set yellow SotReviving 0