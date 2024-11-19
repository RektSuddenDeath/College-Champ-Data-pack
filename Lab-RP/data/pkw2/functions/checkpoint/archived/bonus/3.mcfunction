
execute as @a[x=-15017,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=-1}] run tag @s add checkpointed
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run tag @s add checkpointed
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run tag @s add checkpointed
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run tag @s add checkpointed

execute as @a[x=-15017,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=-1}] run scoreboard players set @s pkw2_cp 15
execute as @a[x=-15017,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=-1}] run scoreboard players set @s pkw2_bonus3 0
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run execute at @s run title @s title ""
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run execute at @s run title @s subtitle ["","+1 ","弶"]
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B3-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=13}]"},"§7!"]
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run scoreboard players set @s pkw2_cp 16
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run scoreboard players set @s pkw2_bb3 1
execute as @a[x=-15045,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=0}] run scoreboard players add @s pkw2_bonus3 1

execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run execute at @s run title @s title ""
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run execute at @s run title @s subtitle ["","+1 ","豇"]
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B3-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=14}]"},"§7!"]
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run scoreboard players set @s pkw2_cp 17
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run scoreboard players set @s pkw2_bb3 2
execute as @a[x=-15073,y=105,z=-14763,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus3=1}] run scoreboard players add @s pkw2_bonus3 1

execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run execute at @s run playsound minecraft:sound.majoracquire record @s
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run execute at @s run title @s title ""
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run execute at @s run title @s subtitle ["","+1 ","耩"]
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B3-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=15}]"},"§7!"]
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run scoreboard players set @s pkw2_cp 18
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run scoreboard players set @s pkw2_bb3 3
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=2}] run scoreboard players add @s pkw2_bonus3 1
execute as @a[x=-15112,y=109,z=-14762,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus3=3}] run tp @s -15008.40 106.00 -14759.5 -90 0
