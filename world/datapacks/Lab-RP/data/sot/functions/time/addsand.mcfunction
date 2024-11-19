
scoreboard players operation timedigit SotGame = gametime SotTeamTime
scoreboard players operation timedigit SotGame %= 10 math

execute if score timedigit SotGame matches 1..7 as @e[type=area_effect_cloud,tag=SotCore,scores={SotSandsLeft=1..}] at @s unless entity @e[type=falling_block,distance=0..21] run setblock ~ ~-9 ~ sand
execute if score timedigit SotGame matches 1..7 as @e[type=area_effect_cloud,tag=SotCore,scores={SotSandsLeft=1..}] at @s unless entity @e[type=falling_block,distance=0..21] run scoreboard players remove @s SotSandsLeft 1

execute if score gameflag SotGame matches 1 run schedule function sot:time/addsand 10t