
tag @a[x=-15003,y=105,z=-14744,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=14..17}] add checkpointed
tag @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] add checkpointed
tag @a[x=-15003,y=105,z=-14671,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=19}] add checkpointed
tag @a[x=-15003,y=104,z=-14642,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] add checkpointed

execute as @a[x=-15003,y=105,z=-14744,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=14..17}] run scoreboard players set @s pkw2_main3 0
execute as @a[x=-15003,y=105,z=-14744,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=14..17}] run scoreboard players set @s pkw2_cp 18

execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M3-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=16}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run scoreboard players set @s pkw2_main 7
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run scoreboard players set @s pkw2_main3 1
execute as @a[x=-15003,y=105,z=-14705,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=18}] run scoreboard players set @s pkw2_cp 19

execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run execute at @s run title @s title ""
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M3-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=17}]"},"§7!"]
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run scoreboard players set @s pkw2_main 8
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run scoreboard players set @s pkw2_main3 2
execute as @a[x=-15005,y=105,z=-14671,dx=10,dy=8,dz=2,gamemode=adventure,scores={pkw2_cp=19}] run scoreboard players set @s pkw2_cp 20

execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run execute at @s run title @s title ""
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M3-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=18}]"},"§7!"]
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M3] ","§aCandy","§7!"]
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run scoreboard players set @s pkw2_main3 3
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run scoreboard players set @s pkw2_main 9
execute as @a[x=-15006,y=104,z=-14642,dx=12,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=20}] run scoreboard players set @s pkw2_cp 21
