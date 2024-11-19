
execute if block 3000 79 2502 sand if score orange SotTeamTime matches 111..120 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 3000 79 2502 sand if score orange SotTeamTime matches 111..120 run give @r[team=orange,gamemode=adventure,x=2998,y=78,z=2500,dx=4,dy=3,dz=8] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 3000 79 2502 sand if score orange SotTeamTime matches 1..110 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 3000 79 2502 sand if score orange SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=orange] SotSandsLeft 1
execute if block 3000 79 2502 sand if score orange SotTeamTime matches 1..110 run execute as @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 3000 79 2502 sand if score orange SotTeamTime matches 1..110 run scoreboard players add orange SotTeamTime 10

setblock 3000 79 2502 air

execute if block 3002 79 2500 sand if score orange SotTeamTime matches 111..120 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 3002 79 2500 sand if score orange SotTeamTime matches 111..120 run give @r[team=orange,gamemode=adventure,x=3000,y=78,z=2498,dx=8,dy=3,dz=4] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 3002 79 2500 sand if score orange SotTeamTime matches 1..110 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 3002 79 2500 sand if score orange SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=orange] SotSandsLeft 1
execute if block 3002 79 2500 sand if score orange SotTeamTime matches 1..110 run execute as @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 3002 79 2500 sand if score orange SotTeamTime matches 1..110 run scoreboard players add orange SotTeamTime 10

setblock 3002 79 2500 air


execute if block 3000 79 2498 sand if score orange SotTeamTime matches 111..120 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 3000 79 2498 sand if score orange SotTeamTime matches 111..120 run give @r[team=orange,gamemode=adventure,x=2998,y=78,z=2492,dx=4,dy=3,dz=8] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 3000 79 2498 sand if score orange SotTeamTime matches 1..110 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 3000 79 2498 sand if score orange SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=orange] SotSandsLeft 1
execute if block 3000 79 2498 sand if score orange SotTeamTime matches 1..110 run execute as @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 3000 79 2498 sand if score orange SotTeamTime matches 1..110 run scoreboard players add orange SotTeamTime 10

setblock 3000 79 2498 air

execute if block 2998 79 2500 sand if score orange SotTeamTime matches 111..120 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙漏已满！","color":"yellow"}]
execute if block 2998 79 2500 sand if score orange SotTeamTime matches 111..120 run give @r[team=orange,gamemode=adventure,x=2992,y=78,z=2498,dx=8,dy=3,dz=4] sand{CanPlaceOn:[light_blue_wool],CanDestroy:[sand,torch,light_blue_carpet,wall_torch]}


execute if block 2998 79 2500 sand if score orange SotTeamTime matches 1..110 run title @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] actionbar [{"text":"沙子已倒入沙漏","color":"yellow"}]
execute if block 2998 79 2500 sand if score orange SotTeamTime matches 1..110 run scoreboard players add @e[type=area_effect_cloud,tag=SotCore,tag=orange] SotSandsLeft 1
execute if block 2998 79 2500 sand if score orange SotTeamTime matches 1..110 run execute as @a[team=orange,x=2995,y=78,z=2495,dx=10,dy=3,dz=10] at @s run playsound sound.sands_of_time.fill_timer record @s ^ ^ ^-1 1 1
execute if block 2998 79 2500 sand if score orange SotTeamTime matches 1..110 run scoreboard players add orange SotTeamTime 10

setblock 2998 79 2500 air

# execute if score gameflag SotGame matches 1 run schedule function sot:time/orangeadd 3t