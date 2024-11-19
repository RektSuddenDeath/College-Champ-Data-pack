
tag @a[x=-15003,y=105,z=-14867,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=7..10}] add checkpointed
tag @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] add checkpointed
tag @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] add checkpointed
tag @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] add checkpointed

execute as @a[x=-15003,y=105,z=-14867,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=7..10}] run scoreboard players set @s pkw2_main2 0
execute as @a[x=-15003,y=105,z=-14867,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=7..10}] run scoreboard players set @s pkw2_cp 11

execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M2-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=10}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run scoreboard players set @s pkw2_main 4
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run scoreboard players set @s pkw2_main2 1
execute as @a[x=-15003,y=105,z=-14834,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=11}] run scoreboard players set @s pkw2_cp 12

execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M2-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=11}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run scoreboard players set @s pkw2_main 5
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run scoreboard players set @s pkw2_main2 2
execute as @a[x=-15003,y=105,z=-14800,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=12}] run scoreboard players set @s pkw2_cp 13

execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M2-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=12}]"},"§7!"]
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M2] ","§aFactory","§7!"]
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run scoreboard players set @s pkw2_main 6
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run scoreboard players set @s pkw2_main2 3
execute as @a[x=-15003,y=104,z=-14770,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=13}] run scoreboard players set @s pkw2_cp 14
