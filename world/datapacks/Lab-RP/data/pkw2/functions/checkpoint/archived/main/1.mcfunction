
tag @a[x=-15003,y=105,z=-14984,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=0..3}] add checkpointed
tag @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] add checkpointed
tag @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] add checkpointed
tag @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] add checkpointed

execute as @a[x=-15003,y=105,z=-14984,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=0..3}] run scoreboard players set @s pkw2_main1 0
execute as @a[x=-15003,y=105,z=-14984,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=0..3}] run scoreboard players set @s pkw2_cp 4

execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M1-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=4}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run scoreboard players set @s pkw2_main 1
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run scoreboard players set @s pkw2_main1 1
execute as @a[x=-15003,y=105,z=-14954,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=4}] run scoreboard players set @s pkw2_cp 5

execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M1-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=5}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run scoreboard players set @s pkw2_main 2
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run scoreboard players set @s pkw2_main1 2
execute as @a[x=-15003,y=105,z=-14924,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=5}] run scoreboard players set @s pkw2_cp 6

execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M1-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=6}]"},"§7!"]
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M1] ","§aPark","§7!"]
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run scoreboard players set @s pkw2_main 3
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run scoreboard players set @s pkw2_main1 3
execute as @a[x=-15003,y=104,z=-14894,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=6}] run scoreboard players set @s pkw2_cp 7
