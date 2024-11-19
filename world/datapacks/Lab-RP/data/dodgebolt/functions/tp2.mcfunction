#blue



tp @r[tag=db_teamtwo,tag=!dodgebolt.tp] 10005 186 9969 facing 10006 186 9969
tag @a[tag=db_teamtwo,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

tp @r[tag=db_teamtwo,tag=!dodgebolt.tp] 10001 186 9975 facing 10002 186 9975
tag @a[tag=db_teamtwo,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

tp @r[tag=db_teamtwo,tag=!dodgebolt.tp] 10001 186 9981 facing 10002 186 9981
tag @a[tag=db_teamtwo,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

tp @r[tag=db_teamtwo,tag=!dodgebolt.tp] 10005 186 9987 facing 10006 186 9987
tag @a[tag=db_teamtwo,x=9997,y=185,z=9963,dx=32,dy=7,dz=30] add dodgebolt.tp

execute as @a[tag=dodgebolt.tp] at @s run setblock ~1 ~1 ~ barrier
execute as @a[tag=dodgebolt.tp] at @s run setblock ~ ~1 ~1 barrier
execute as @a[tag=dodgebolt.tp] at @s run setblock ~ ~1 ~-1 barrier
execute as @a[tag=dodgebolt.tp] at @s run setblock ~-1 ~1 ~ barrier

scoreboard players add team2tp db_game 4

execute if score team2tp db_game < team2player db_game run function dodgebolt:tp2
execute if score team2tp db_game >= team2player db_game run tag @a[tag=db_teamtwo] remove dodgebolt.tp
execute if score team2tp db_game >= team2player db_game run scoreboard players set team2tp db_game 0