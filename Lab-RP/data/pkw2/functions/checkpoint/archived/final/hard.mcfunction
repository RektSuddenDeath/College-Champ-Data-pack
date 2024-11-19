execute as @a[x=-15004,y=106,z=-14360,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=35}] run tag @s add checkpointed
execute as @a[x=-15044,y=108,z=-14330,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=40}] run tag @s add checkpointed
execute as @a[x=-15044,y=108,z=-14299,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=41}] run tag @s add checkpointed

execute as @a[x=-15044,y=106,z=-14360,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=35}] run scoreboard players set @s pkw2_cp 40
execute as @a[x=-15044,y=106,z=-14360,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=36}] run scoreboard players set @s pkw2_cp 40
execute as @a[x=-15044,y=106,z=-14360,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=37}] run scoreboard players set @s pkw2_cp 40

execute as @a[x=-15044,y=108,z=-14330,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=40}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B6-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=34}]"},"§7!"]
execute as @a[x=-15044,y=108,z=-14330,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=40}] run scoreboard players set @s pkw2_cp 41


tag @a[x=-15042,y=126,z=-14293,dx=4,dy=3,dz=1,gamemode=adventure,scores={pkw2_cp=41}] add hardFinal
tag @a[tag=hardFinal] add hardComplete

execute as @a[tag=hardFinal] run execute at @s run playsound minecraft:sound.pkw_course_finish record @s
execute as @a[tag=hardFinal] run execute at @s run title @s times 0 20 10
execute as @a[tag=hardFinal] run execute at @s run title @s title ""
execute as @a[tag=hardFinal] run execute at @s run title @s subtitle ["","+0.90x ","§6团队倍率"]
execute as @a[tag=hardFinal] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B6-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=35}]"},"§7!"]
execute as @a[tag=hardFinal] run scoreboard players set @s pkw2_final 3
execute as @a[tag=hardFinal] run tellraw @a ["","[","§e▶","] ",{"selector":"@s"},"§7完成了§c困难难度的§r全部挑战！"]
execute as @a[tag=hardFinal] run gamemode spectator @s
execute as @a[tag=hardFinal] run tp @s -15039.5 128.16 -14295.5 -180 0

execute as @a[tag=hardFinal,team=red] run function pkw2:firework/queue/hard/red
execute as @a[tag=hardFinal,team=blue] run function pkw2:firework/queue/hard/blue
execute as @a[tag=hardFinal,team=green] run function pkw2:firework/queue/hard/green
execute as @a[tag=hardFinal,team=yellow] run function pkw2:firework/queue/hard/yellow
execute as @a[tag=hardFinal,team=cyan] run function pkw2:firework/queue/hard/cyan
execute as @a[tag=hardFinal,team=orange] run function pkw2:firework/queue/hard/orange
execute as @a[tag=hardFinal,team=pink] run function pkw2:firework/queue/hard/pink
execute as @a[tag=hardFinal,team=purple] run function pkw2:firework/queue/hard/purple

tag @a remove hardFinal
