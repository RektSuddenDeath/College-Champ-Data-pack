
#Kill anyone who's in the lava


execute as @a[x=10017,y=192,z=10004,dx=2,dy=5,dz=2] run attribute @s minecraft:generic.attack_damage base set -2

execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] run data merge entity @s {PickupDelay:0}
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
kill @a[team=!spec,x=9997,y=179,z=9963,dx=34,dy=4,dz=30]
give @a[team=!spec,x=9997,y=185,z=9963,dx=34,dy=5,dz=30,scores={health=1..},tag=!nobow,nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow{Unbreakable:1b,HideFlags:5}
# tweaks the lava'd arrow's position
execute as @e[x=9997,y=180,z=9963,dx=15,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow"}}] run summon arrow 10007 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d]}
execute as @e[x=10014,y=180,z=9963,dx=15,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow"}}] run summon arrow 10019 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d]}
execute as @e[x=10013,y=180,z=9963,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow"}}] run summon arrow 10013 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d]}

execute as @e[x=9997,y=180,z=9963,dx=15,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow",Count:2b}}] run summon arrow 10007 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d]}
execute as @e[x=10014,y=180,z=9963,dx=15,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow",Count:2b}}] run summon arrow 10019 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d]}
execute as @e[x=10013,y=180,z=9963,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow",Count:2b}}] run summon arrow 10013 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d]}

kill @e[x=9997,y=180,z=9963,dx=34,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow"}}]
kill @e[x=9997,y=180,z=9963,dx=34,dy=3,dz=30,type=item,nbt={Item:{id:"minecraft:arrow",Count:2b}}]

# Elimination Pop
execute as @a[scores={db_death=1}] run execute as @a at @s run playsound sound.elimination_pop record @s
# Adds process to shrinking
execute as @a[scores={db_death=1}] run scoreboard players add all db_death 1

# Transcript
#execute as @a[scores={db_death=1}] run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," was eliminated."," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Drops an arrow on the killed player's spot.
execute as @a[scores={killedByRed=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByBlue=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByGreen=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByYellow=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByCyan=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByOrange=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByPurple=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}
execute as @a[scores={killedByPink=1}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:arrow",Count:1},Glowing:1}

# Regarding wins and kill effects.

execute as @a[tag=db_teamone,scores={db_death=1}] run scoreboard players remove team1alive db_game 1
execute as @a[tag=db_teamtwo,scores={db_death=1}] run scoreboard players remove team2alive db_game 1

# Remove alive players count

# Team one get killed
execute as @a[tag=db_teamone,scores={db_death=1}] if score team1alive db_game matches 1 if score overtimeactive db_game matches 0 run function dodgebolt:music/overtimeinit
execute as @a[tag=db_teamone,scores={db_death=1}] at @s run setblock ~ 188 ~ barrier

execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 1 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;11743532]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 2 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;3080447]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 3 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;1441536]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 4 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;11796224]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 5 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;2926259]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 6 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16755200]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 7 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;10879231]}]}}}}
execute as @a[tag=db_teamone,scores={db_death=1}] at @s if score TeamTwo db_teams matches 8 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711905]}]}}}}

execute as @a[tag=db_teamone,scores={db_death=1}] at @s run schedule function dodgebolt:firework/clear 1t
execute as @a[tag=db_teamone,scores={db_death=1}] run scoreboard players set @s db_death 0
execute if score gameflag db_game matches 1 if score team1alive db_game matches 0 unless score team2alive db_game matches 0 run function dodgebolt:winevent/team2

# Team two get killed
execute as @a[tag=db_teamtwo,scores={db_death=1}] if score team2alive db_game matches 1 if score overtimeactive db_game matches 0 run function dodgebolt:music/overtimeinit
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s run setblock ~ 188 ~ barrier

execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 1 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16719360]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 2 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;3080447]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 3 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;1441536]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 4 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;15662848]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 5 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;2926259]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 6 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16755200]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 7 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;10879231]}]}}}}
execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s if score TeamOne db_teams matches 8 run summon firework_rocket ~ 188 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711905]}]}}}}

execute as @a[tag=db_teamtwo,scores={db_death=1}] at @s run schedule function dodgebolt:firework/clear 1t
execute as @a[tag=db_teamtwo,scores={db_death=1}] run scoreboard players set @s db_death 0

execute if score gameflag db_game matches 1 if score team2alive db_game matches 0 unless score team1alive db_game matches 0 run function dodgebolt:winevent/team1

# Round Tie
execute if score gameflag db_game matches 1 if score team1alive db_game matches 0 if score team2alive db_game matches 0 run function dodgebolt:winevent/tie

# Shrinks the border
execute if score gameflag db_game matches 1 unless score mega_mode db_game matches 1 if score shrink1 db_shrink matches 0 if score all db_death matches 1.. run function dodgebolt:shrink/1
execute if score gameflag db_game matches 1 unless score mega_mode db_game matches 1 if score shrink2 db_shrink matches 0 if score all db_death matches 2.. run function dodgebolt:shrink/2
execute if score gameflag db_game matches 1 unless score mega_mode db_game matches 1 if score shrink3 db_shrink matches 0 if score all db_death matches 3.. run function dodgebolt:shrink/3
execute if score gameflag db_game matches 1 unless score mega_mode db_game matches 1 if score shrink4 db_shrink matches 0 if score all db_death matches 4.. run function dodgebolt:shrink/4
execute if score gameflag db_game matches 1 unless score mega_mode db_game matches 1 if score shrink5 db_shrink matches 0 if score all db_death matches 5.. run function dodgebolt:shrink/5
execute if score gameflag db_game matches 1 unless score mega_mode db_game matches 1 if score shrink6 db_shrink matches 0 if score all db_death matches 7.. run function dodgebolt:shrink/6

execute if score gameflag db_game matches 1 if score mega_mode db_game matches 1 if score shrink1 db_shrink matches 0 if score all db_death matches 8.. run function dodgebolt:shrink/1
execute if score gameflag db_game matches 1 if score mega_mode db_game matches 1 if score shrink2 db_shrink matches 0 if score all db_death matches 14.. run function dodgebolt:shrink/2
execute if score gameflag db_game matches 1 if score mega_mode db_game matches 1 if score shrink3 db_shrink matches 0 if score all db_death matches 20.. run function dodgebolt:shrink/3
execute if score gameflag db_game matches 1 if score mega_mode db_game matches 1 if score shrink4 db_shrink matches 0 if score all db_death matches 26.. run function dodgebolt:shrink/4
execute if score gameflag db_game matches 1 if score mega_mode db_game matches 1 if score shrink5 db_shrink matches 0 if score all db_death matches 32.. run function dodgebolt:shrink/5
execute if score gameflag db_game matches 1 if score mega_mode db_game matches 1 if score shrink6 db_shrink matches 0 if score all db_death matches 36.. run function dodgebolt:shrink/6


# Clean up
scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0

execute if score gameflag db_game matches 1 run schedule function dodgebolt:death 2t