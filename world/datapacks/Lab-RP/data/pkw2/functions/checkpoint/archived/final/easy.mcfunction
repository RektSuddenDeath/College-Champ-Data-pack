execute as @a[x=-14970,y=107,z=-14366,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=35}] run tag @s add checkpointed

execute as @a[x=-14970,y=107,z=-14366,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=35}] run scoreboard players set @s pkw2_cp 36
execute as @a[x=-14970,y=107,z=-14366,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=37}] run scoreboard players set @s pkw2_cp 36
execute as @a[x=-14970,y=107,z=-14366,dx=8,dy=5,dz=1,gamemode=adventure,scores={pkw2_cp=40}] run scoreboard players set @s pkw2_cp 36

tag @a[x=-14971,y=124,z=-14315,dx=4,dy=3,dz=1,gamemode=adventure,scores={pkw2_cp=36}] add easyFinal
tag @a[tag=easyFinal] add easyComplete

execute as @a[tag=easyFinal] run execute at @s run playsound minecraft:sound.pkw_course_finish record @s
execute as @a[tag=easyFinal] run execute at @s run title @s times 0 20 10
execute as @a[tag=easyFinal] run execute at @s run title @s title ""
execute as @a[tag=easyFinal] run execute at @s run title @s subtitle ["","+0.15x ","§6团队倍率"]
execute as @a[tag=easyFinal] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B6-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=31}]"},"§7!"]
execute as @a[tag=easyFinal] run scoreboard players set @s pkw2_final 1
execute as @a[tag=easyFinal] run tellraw @a ["","[","§e▶","] ",{"selector":"@s"},"§7完成了全部挑战！"]
execute as @a[tag=easyFinal] run gamemode spectator @s
execute as @a[tag=easyFinal] run tp @s -14968.5 124.61 -14317.5 -180 0

execute as @a[tag=easyFinal,team=red] run function pkw2:firework/queue/easy/red
execute as @a[tag=easyFinal,team=blue] run function pkw2:firework/queue/easy/blue
execute as @a[tag=easyFinal,team=green] run function pkw2:firework/queue/easy/green
execute as @a[tag=easyFinal,team=yellow] run function pkw2:firework/queue/easy/yellow
execute as @a[tag=easyFinal,team=cyan] run function pkw2:firework/queue/easy/cyan
execute as @a[tag=easyFinal,team=orange] run function pkw2:firework/queue/easy/orange
execute as @a[tag=easyFinal,team=pink] run function pkw2:firework/queue/easy/pink
execute as @a[tag=easyFinal,team=purple] run function pkw2:firework/queue/easy/purple

tag @a remove easyFinal