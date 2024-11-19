
tag @a[x=-15002,y=105,z=-14488,dx=4,dy=4,dz=2,gamemode=adventure,scores={pkw2_cp=28..31}] add checkpointed
tag @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] add checkpointed
tag @a[x=-15005,y=106,z=-14420,dx=10,dy=2,dz=1,gamemode=adventure,scores={pkw2_cp=33}] add checkpointed
tag @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] add checkpointed

execute as @a[x=-15002,y=105,z=-14488,dx=4,dy=4,dz=2,gamemode=adventure,scores={pkw2_cp=28..31}] run scoreboard players set @s pkw2_main5 0
execute as @a[x=-15002,y=105,z=-14488,dx=4,dy=4,dz=2,gamemode=adventure,scores={pkw2_cp=28..31}] run scoreboard players set @s pkw2_cp 32

execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run execute at @s run title @s title ""
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M5-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=28}]"},"§7!"]
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run scoreboard players set @s pkw2_main 13
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run scoreboard players set @s pkw2_main5 1
execute as @a[x=-15002,y=106,z=-14455,dx=4,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=32}] run scoreboard players set @s pkw2_cp 33

execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run execute at @s run title @s title ""
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M5-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=29}]"},"§7!"]
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run scoreboard players set @s pkw2_main 14
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run scoreboard players set @s pkw2_main5 2
execute as @a[x=-15005,y=106,z=-14420,dx=10,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=33}] run scoreboard players set @s pkw2_cp 34

execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run execute at @s run title @s title ""
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M5-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=30}]"},"§7!"]
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M5] ","§aOcean","§7!"]
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run scoreboard players set @s pkw2_main5 3
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run scoreboard players set @s pkw2_main 15
execute as @a[x=-15006,y=104,z=-14385,dx=11,dy=4,dz=3,gamemode=adventure,scores={pkw2_cp=34}] run scoreboard players set @s pkw2_cp 35
