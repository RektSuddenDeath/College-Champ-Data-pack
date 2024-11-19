
execute as @a[x=-15017,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=-1}] run tag @s add checkpointed
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run tag @s add checkpointed
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run tag @s add checkpointed
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run tag @s add checkpointed

execute as @a[x=-15017,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=-1}] run scoreboard players set @s pkw2_cp 8
execute as @a[x=-15017,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=-1}] run scoreboard players set @s pkw2_bonus2 0

execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run execute at @s run title @s title ""
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run execute at @s run title @s subtitle ["","+1 ","弶"]
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B2-1] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=7}]"},"§7!"]
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run scoreboard players set @s pkw2_cp 9
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run scoreboard players set @s pkw2_bb2 1
execute as @a[x=-15045,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=0}] run scoreboard players add @s pkw2_bonus2 1

execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run execute at @s run playsound minecraft:sound.acquire record @s
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run execute at @s run title @s title ""
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run execute at @s run title @s subtitle ["","+1 ","豇"]
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B2-2] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=8}]"},"§7!"]
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run scoreboard players set @s pkw2_cp 10
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run scoreboard players set @s pkw2_bb2 2
execute as @a[x=-15073,y=105,z=-14887,dx=1,dy=3,dz=6,gamemode=adventure,scores={pkw2_bonus2=1}] run scoreboard players add @s pkw2_bonus2 1

execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run execute at @s run playsound minecraft:sound.coinspickup record @s
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run execute at @s run playsound minecraft:sound.majoracquire record @s
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run execute at @s run title @s times 0 20 10
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run execute at @s run title @s title ""
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run execute at @s run title @s subtitle ["","+1 ","耩"]
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run execute at @s run tellraw @s ["","[","§e▶","] ","§7你完成了","§r[B2-3] ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=9}]"},"§7!"]
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run scoreboard players set @s pkw2_cp 11
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run scoreboard players set @s pkw2_bb2 3
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=2}] run scoreboard players add @s pkw2_bonus2 1
execute as @a[x=-15112,y=109,z=-14886,dx=0,dy=3,dz=4,gamemode=adventure,scores={pkw2_bonus2=3}] run tp @s -15008.40 106.00 -14883.52 -90 0
