
execute as @a[gamemode=adventure] at @s run execute as @e[type=armor_stand,distance=0..5] run data merge entity @s {CustomNameVisible:1b}
execute if score gameflag SotGame matches 1 run schedule function sot:armorstandvis 1s

effect give @a[x=1350,y=90,z=1350,dx=300,dy=20,dz=300] instant_health 200 9 true
effect give @a[x=1350,y=90,z=1350,dx=300,dy=20,dz=300] resistance 2 9 true


execute as @a[team=spec,tag=!admin_immune] run attribute @s generic.attack_damage base set -100
execute as @a run scoreboard players operation @s SotPersonal_multi = @s SotPersonal
execute as @a run scoreboard players operation @s SotPersonal_multi *= multiplier1 tourney_stats
execute as @a run scoreboard players operation @s SotPersonal_multi /= multiplier2 tourney_stats
execute as @a[x=1800,y=20,z=1800,dx=1400,dy=130,dz=1400,gamemode=adventure,tag=!sotChallenger] run title @s actionbar [{"text": "携带的金币: ","color": "yellow"},{"score":{"objective":"SotPersonal_multi","name":"@s"},"color":"white"}]