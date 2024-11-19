execute as @a[x=-15004,y=106,z=-14351,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=35}] run tag @s add checkpointed
execute as @a[x=-15004,y=106,z=-14323,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=37}] run tag @s add checkpointed
execute as @a[x=-15004,y=106,z=-14292,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=38}] run tag @s add checkpointed

execute as @a[x=-15004,y=106,z=-14351,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=35}] run scoreboard players set @s pkw2_cp 37
execute as @a[x=-15004,y=106,z=-14351,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=36}] run scoreboard players set @s pkw2_cp 37
execute as @a[x=-15004,y=106,z=-14351,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=40}] run scoreboard players set @s pkw2_cp 37

execute as @a[x=-15004,y=106,z=-14323,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=37}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B6-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=32}]"},"§7!"]
execute as @a[x=-15004,y=106,z=-14323,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=37}] run scoreboard players set @s pkw2_cp 38



tag @a[x=-15002,y=109,z=-14286,dx=4,dy=3,dz=1,gamemode=adventure,scores={pkw2_cp=38}] add mediumFinal
tag @a[tag=mediumFinal] add mediumComplete

execute as @a[tag=mediumFinal] run execute at @s run playsound minecraft:sound.pkw_course_finish record @s
execute as @a[tag=mediumFinal] run execute at @s run title @s times 0 20 10
execute as @a[tag=mediumFinal] run execute at @s run title @s title ""
execute as @a[tag=mediumFinal] run execute at @s run title @s subtitle ["","+0.4x ","§6团队倍率"]
execute as @a[tag=mediumFinal] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B6-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=33}]"},"§7!"]
execute as @a[tag=mediumFinal] run scoreboard players set @s pkw2_final 2
execute as @a[tag=mediumFinal] run tellraw @a ["","[","§e▶","] ",{"selector":"@s"},"§7完成了全部挑战！"]
execute as @a[tag=mediumFinal] run gamemode spectator @s
execute as @a[tag=mediumFinal] run tp @s -15001.5 111.03 -14288.5 -180 0

execute as @a[tag=mediumFinal,team=red] run function pkw2:firework/queue/medium/red
execute as @a[tag=mediumFinal,team=blue] run function pkw2:firework/queue/medium/blue
execute as @a[tag=mediumFinal,team=green] run function pkw2:firework/queue/medium/green
execute as @a[tag=mediumFinal,team=yellow] run function pkw2:firework/queue/medium/yellow
execute as @a[tag=mediumFinal,team=cyan] run function pkw2:firework/queue/medium/cyan
execute as @a[tag=mediumFinal,team=orange] run function pkw2:firework/queue/medium/orange
execute as @a[tag=mediumFinal,team=pink] run function pkw2:firework/queue/medium/pink
execute as @a[tag=mediumFinal,team=purple] run function pkw2:firework/queue/medium/purple

tag @a remove mediumFinal