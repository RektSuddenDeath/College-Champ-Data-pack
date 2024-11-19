#region pink
scoreboard players remove pink SotTeamTime 1
execute store result score cache.pi.t SotCache run scoreboard players get pink SotTeamTime
scoreboard players operation cache.pi.t SotCache %= 10 SotCache
execute if score cache.pi.t SotCache matches 0 run setblock 3000 80 2000 air
execute if score cache.pi.t SotCache matches 0 if score pink SotTeamTime matches 1.. if score PinkPlaying SotGame matches 1 unless score pink SotTeamTime matches 11..30 run execute as @a[team=pink] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 1
execute if score cache.pi.t SotCache matches 0 if score PinkPlaying SotGame matches 1 if score pink SotTeamTime matches 21..30 run execute as @a[team=pink] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 0.8
execute if score cache.pi.t SotCache matches 0 if score PinkPlaying SotGame matches 1 if score pink SotTeamTime matches 11..20 run execute as @a[team=pink] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 0.6

execute if score pink SotTeamTime matches 1..9 if score PinkPlaying SotGame matches 1 run execute as @a[team=pink] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 1
execute if score pink SotTeamTime matches 0 run function sot:fail/pink

execute if score pink SotTeamTime matches 101..110 run execute as @e[type=item_frame,x=2998,y=90,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 101..110 run execute as @e[type=item_frame,x=2998,y=90,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 91..100 run execute as @e[type=item_frame,x=2998,y=89,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 91..100 run execute as @e[type=item_frame,x=2998,y=89,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 81..90 run execute as @e[type=item_frame,x=2998,y=88,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:39}}}
execute unless score pink SotTeamTime matches 81..90 run execute as @e[type=item_frame,x=2998,y=88,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:34}}}


execute if score pink SotTeamTime matches 71..80 run execute as @e[type=item_frame,x=2998,y=87,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 71..80 run execute as @e[type=item_frame,x=2998,y=87,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 61..70 run execute as @e[type=item_frame,x=2998,y=86,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 61..70 run execute as @e[type=item_frame,x=2998,y=86,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 51..60 run execute as @e[type=item_frame,x=2998,y=85,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:38}}}
execute unless score pink SotTeamTime matches 51..60 run execute as @e[type=item_frame,x=2998,y=85,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:35}}}


execute if score pink SotTeamTime matches 41..50 run execute as @e[type=item_frame,x=2998,y=84,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 41..50 run execute as @e[type=item_frame,x=2998,y=84,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 31..40 run execute as @e[type=item_frame,x=2998,y=83,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 31..40 run execute as @e[type=item_frame,x=2998,y=83,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 21..30 run execute as @e[type=item_frame,x=2998,y=82,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:37}}}
execute unless score pink SotTeamTime matches 21..30 run execute as @e[type=item_frame,x=2998,y=82,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:36}}}


execute if score pink SotTeamTime matches 11..20 run execute as @e[type=item_frame,x=2998,y=81,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 11..20 run execute as @e[type=item_frame,x=2998,y=81,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score pink SotTeamTime matches 1..10 run execute as @e[type=item_frame,x=2998,y=80,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score pink SotTeamTime matches 1..10 run execute as @e[type=item_frame,x=2998,y=80,z=1998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}
#endregion