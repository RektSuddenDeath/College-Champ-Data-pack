
execute as @a[x=-15017,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=-1}] run tag @s add checkpointed
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run tag @s add checkpointed
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run tag @s add checkpointed
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run tag @s add checkpointed

execute as @a[x=-15017,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=-1}] run scoreboard players set @s pkw2_cp 29
execute as @a[x=-15017,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=-1}] run scoreboard players set @s pkw2_bonus5 0

execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run execute at @s run title @s title ""
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run execute at @s run title @s subtitle ["","+1 ","弶"]
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B5-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=25}]"},"§7!"]
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run scoreboard players set @s pkw2_cp 30
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run scoreboard players set @s pkw2_bb5 1
execute as @a[x=-15045,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=0}] run scoreboard players add @s pkw2_bonus5 1

execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run execute at @s run title @s title ""
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run execute at @s run title @s subtitle ["","+1 ","豇"]
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B5-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=26}]"},"§7!"]
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run scoreboard players set @s pkw2_cp 31
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run scoreboard players set @s pkw2_bb5 2
execute as @a[x=-15073,y=105,z=-14507,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus5=1}] run scoreboard players add @s pkw2_bonus5 1

execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run execute at @s run playsound minecraft:sound.majoracquire record @s
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run execute at @s run title @s title ""
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run execute at @s run title @s subtitle ["","+1 ","耩"]
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B5-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=27}]"},"§7!"]
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run scoreboard players set @s pkw2_cp 32
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run scoreboard players set @s pkw2_bb5 3
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] if score @s pkw2_bonus2 matches ..2 run scoreboard players set @s pkw2_bonus2 3
execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=2}] run scoreboard players add @s pkw2_bonus5 1

execute as @a[x=-15112,y=109,z=-14506,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus5=3}] run tp @s -15009.03 106.00 -14503.56 -89.18 -1.84
