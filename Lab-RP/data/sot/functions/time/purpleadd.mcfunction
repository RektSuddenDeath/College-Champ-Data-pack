
execute if block 3000 79 3002 sand if score purple SotTeamTime matches 111..120 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 3000 79 3002 sand if score purple SotTeamTime matches 111..120 run give @r[team=purple,gamemode=adventure,x=2998,y=78,z=3000,dx=4,dy=3,dz=8] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 3000 79 3002 sand if score purple SotTeamTime matches 1..110 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 3000 79 3002 sand if score purple SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=purple] SotSandsLeft 1
execute if block 3000 79 3002 sand if score purple SotTeamTime matches 1..110 run execute as @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 3000 79 3002 sand if score purple SotTeamTime matches 1..110 run scoreboard players add purple SotTeamTime 10

setblock 3000 79 3002 air

execute if block 3002 79 3000 sand if score purple SotTeamTime matches 111..120 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 3002 79 3000 sand if score purple SotTeamTime matches 111..120 run give @r[team=purple,gamemode=adventure,x=3000,y=78,z=2998,dx=8,dy=3,dz=4] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 3002 79 3000 sand if score purple SotTeamTime matches 1..110 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 3002 79 3000 sand if score purple SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=purple] SotSandsLeft 1
execute if block 3002 79 3000 sand if score purple SotTeamTime matches 1..110 run execute as @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 3002 79 3000 sand if score purple SotTeamTime matches 1..110 run scoreboard players add purple SotTeamTime 10

setblock 3002 79 3000 air


execute if block 3000 79 2998 sand if score purple SotTeamTime matches 111..120 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 3000 79 2998 sand if score purple SotTeamTime matches 111..120 run give @r[team=purple,gamemode=adventure,x=2998,y=78,z=2992,dx=4,dy=3,dz=8] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 3000 79 2998 sand if score purple SotTeamTime matches 1..110 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 3000 79 2998 sand if score purple SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=purple] SotSandsLeft 1
execute if block 3000 79 2998 sand if score purple SotTeamTime matches 1..110 run execute as @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 3000 79 2998 sand if score purple SotTeamTime matches 1..110 run scoreboard players add purple SotTeamTime 10

setblock 3000 79 2998 air

execute if block 2998 79 3000 sand if score purple SotTeamTime matches 111..120 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 2998 79 3000 sand if score purple SotTeamTime matches 111..120 run give @r[team=purple,gamemode=adventure,x=2992,y=78,z=2998,dx=8,dy=3,dz=4] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 2998 79 3000 sand if score purple SotTeamTime matches 1..110 run title @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 2998 79 3000 sand if score purple SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=purple] SotSandsLeft 1
execute if block 2998 79 3000 sand if score purple SotTeamTime matches 1..110 run execute as @a[team=purple,x=2995,y=78,z=2995,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 2998 79 3000 sand if score purple SotTeamTime matches 1..110 run scoreboard players add purple SotTeamTime 10

setblock 2998 79 3000 air

# execute if score gameflag SotGame matches 1 run schedule function sot:time/purpleadd 3t