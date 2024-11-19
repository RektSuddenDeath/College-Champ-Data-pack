
tag @a[x=-15003,y=105,z=-14613,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=21..24}] add checkpointed
tag @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] add checkpointed
tag @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] add checkpointed
tag @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] add checkpointed

execute as @a[x=-15003,y=105,z=-14613,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=21..24}] run scoreboard players set @s pkw2_main4 0
execute as @a[x=-15003,y=105,z=-14613,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=21..24}] run scoreboard players set @s pkw2_cp 25

execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M4-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=22}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run scoreboard players set @s pkw2_main 10
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run scoreboard players set @s pkw2_main4 1
execute as @a[x=-15003,y=105,z=-14580,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=25}] run scoreboard players set @s pkw2_cp 26

execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M4-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=23}]"},"§7!"]
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run scoreboard players set @s pkw2_main 11
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run scoreboard players set @s pkw2_main4 2
execute as @a[x=-15003,y=105,z=-14544,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=26}] run scoreboard players set @s pkw2_cp 27

execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run execute at @s run title @s title ""
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run execute at @s run title @s subtitle ["","+1 ","茳"]
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M4-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=24}]"},"§7!"]
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[M4] ","§aMesa","§7!"]
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run scoreboard players set @s pkw2_main4 3
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run scoreboard players set @s pkw2_main 12
execute as @a[x=-15003,y=104,z=-14514,dx=6,dy=4,dz=1,gamemode=adventure,scores={pkw2_cp=27}] run scoreboard players set @s pkw2_cp 28
