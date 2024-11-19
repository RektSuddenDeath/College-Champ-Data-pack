
execute as @a[x=-15017,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=-1}] run tag @s add checkpointed
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run tag @s add checkpointed
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run tag @s add checkpointed
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run tag @s add checkpointed

execute as @a[x=-15017,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=-1}] run scoreboard players set @s pkw2_cp 1
execute as @a[x=-15017,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=-1}] run scoreboard players set @s pkw2_bonus1 0

execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run execute at @s run title @s title ""
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run execute at @s run title @s subtitle ["","+1 ","弶"]
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B1-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=1}]"},"§7!"]
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run scoreboard players set @s pkw2_cp 2
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run scoreboard players set @s pkw2_bb1 1
execute as @a[x=-15045,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=0}] run scoreboard players add @s pkw2_bonus1 1

execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run execute at @s run title @s title ""
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run execute at @s run title @s subtitle ["","+1 ","豇"]
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B1-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=2}]"},"§7!"]
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run scoreboard players set @s pkw2_cp 3
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run scoreboard players set @s pkw2_bb1 2
execute as @a[x=-15073,y=105,z=-15003,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus1=1}] run scoreboard players add @s pkw2_bonus1 1

execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run execute at @s run playsound minecraft:sound.majoracquire record @s
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run execute at @s run title @s title ""
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run execute at @s run title @s subtitle ["","+1 ","耩"]
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B1-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=3}]"},"§7!"]
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run scoreboard players set @s pkw2_cp 4
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run scoreboard players set @s pkw2_bb1 3
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=2}] run scoreboard players add @s pkw2_bonus1 1
execute as @a[x=-15112,y=109,z=-15002,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus1=3}] run tp @s -15008.5 105.00 -14999.5 990 0
