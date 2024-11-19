#region yellow
scoreboard players remove yellow SotTeamTime 1
execute store result score cache.y.t SotCache run scoreboard players get yellow SotTeamTime
scoreboard players operation cache.y.t SotCache %= 10 SotCache
execute if score cache.y.t SotCache matches 0 run setblock 2500 80 3000 air
execute if score cache.y.t SotCache matches 0 if score yellow SotTeamTime matches 1.. if score YellowPlaying SotGame matches 1 unless score yellow SotTeamTime matches 11..30 run execute as @a[team=yellow] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 1
execute if score cache.y.t SotCache matches 0 if score YellowPlaying SotGame matches 1 if score yellow SotTeamTime matches 21..30 run execute as @a[team=yellow] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 0.8
execute if score cache.y.t SotCache matches 0 if score YellowPlaying SotGame matches 1 if score yellow SotTeamTime matches 11..20 run execute as @a[team=yellow] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 0.6

execute if score yellow SotTeamTime matches 1..9 if score YellowPlaying SotGame matches 1 run execute as @a[team=yellow] at @s run playsound minecraft:sound.sottimer record @s ~ ~ ~ 1.1 1
execute if score yellow SotTeamTime matches 0 run function sot:fail/yellow

execute if score yellow SotTeamTime matches 101..110 run execute as @e[type=item_frame,x=2498,y=90,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 101..110 run execute as @e[type=item_frame,x=2498,y=90,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 91..100 run execute as @e[type=item_frame,x=2498,y=89,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 91..100 run execute as @e[type=item_frame,x=2498,y=89,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 81..90 run execute as @e[type=item_frame,x=2498,y=88,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:39}}}
execute unless score yellow SotTeamTime matches 81..90 run execute as @e[type=item_frame,x=2498,y=88,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:34}}}


execute if score yellow SotTeamTime matches 71..80 run execute as @e[type=item_frame,x=2498,y=87,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 71..80 run execute as @e[type=item_frame,x=2498,y=87,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 61..70 run execute as @e[type=item_frame,x=2498,y=86,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 61..70 run execute as @e[type=item_frame,x=2498,y=86,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 51..60 run execute as @e[type=item_frame,x=2498,y=85,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:38}}}
execute unless score yellow SotTeamTime matches 51..60 run execute as @e[type=item_frame,x=2498,y=85,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:35}}}


execute if score yellow SotTeamTime matches 41..50 run execute as @e[type=item_frame,x=2498,y=84,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 41..50 run execute as @e[type=item_frame,x=2498,y=84,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 31..40 run execute as @e[type=item_frame,x=2498,y=83,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 31..40 run execute as @e[type=item_frame,x=2498,y=83,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 21..30 run execute as @e[type=item_frame,x=2498,y=82,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:37}}}
execute unless score yellow SotTeamTime matches 21..30 run execute as @e[type=item_frame,x=2498,y=82,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:36}}}


execute if score yellow SotTeamTime matches 11..20 run execute as @e[type=item_frame,x=2498,y=81,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 11..20 run execute as @e[type=item_frame,x=2498,y=81,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}


execute if score yellow SotTeamTime matches 1..10 run execute as @e[type=item_frame,x=2498,y=80,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:40}}}
execute unless score yellow SotTeamTime matches 1..10 run execute as @e[type=item_frame,x=2498,y=80,z=2998,dx=4,dy=0,dz=4] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:33}}}
