#Red


tp @r[tag=db_teamone,tag=!dodgebolt.tp] 10021 186 9969 facing 10013 186 9969
tag @a[tag=db_teamone,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

tp @r[tag=db_teamone,tag=!dodgebolt.tp] 10025 186 9975 facing 10024 186 9975
tag @a[tag=db_teamone,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

tp @r[tag=db_teamone,tag=!dodgebolt.tp] 10025 186 9981 facing 10024 186 9975
tag @a[tag=db_teamone,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

tp @r[tag=db_teamone,tag=!dodgebolt.tp] 10021 186 9987 facing 10013 187 9987
tag @a[tag=db_teamone,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp
execute as @a[tag=dodgebolt.tp] at @s run setblock ~1 ~1 ~ barrier
execute as @a[tag=dodgebolt.tp] at @s run setblock ~ ~1 ~1 barrier
execute as @a[tag=dodgebolt.tp] at @s run setblock ~ ~1 ~-1 barrier
execute as @a[tag=dodgebolt.tp] at @s run setblock ~-1 ~1 ~ barrier

scoreboard players add team1tp db_game 4

execute if score team1tp db_game < team1player db_game run function dodgebolt:tp1
execute if score team1tp db_game >= team1player db_game run tag @a[tag=db_teamone] remove dodgebolt.tp
execute if score team1tp db_game >= team1player db_game run scoreboard players set team1tp db_game 0