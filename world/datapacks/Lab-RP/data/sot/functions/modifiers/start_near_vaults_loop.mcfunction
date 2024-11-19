
execute as @a[tag=sot_ability_access_rusty_doors] at @s run execute as @e[type=area_effect_cloud,tag=rustydoor,distance=0..5] at @s run setblock ~ ~ ~ dark_oak_planks
execute if score gametime SotTeamTime matches 240 run tag @a remove sot_ability_access_rusty_doors
execute if score gametime SotTeamTime matches 240 run tellraw @a ["§c[§r鼱§c] 不再能免钥匙打开生锈门了。"]
execute if score gametime SotTeamTime matches 240 run return 0

execute if score gameflag SotGame matches 1 run schedule function sot:modifiers/start_near_vaults_loop 1t