execute if score TimeElapsed rsr_game matches 5 run summon item_display -8012 171 -8000 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat2","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 5 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 8 run kill @e[type=item_display,tag=nextplatform,tag=plat2]
execute if score TimeElapsed rsr_game matches 8 run function rocketspleefrush:structure/temple/2
execute if score TimeElapsed rsr_game matches 8 run scoreboard players set $minY rsr_playerY 152

execute if score TimeElapsed rsr_game matches 8 run summon item_display -8025 169.00 -7999 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat3","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 8 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 11 run kill @e[type=item_display,tag=nextplatform,tag=plat3]
execute if score TimeElapsed rsr_game matches 11 run function rocketspleefrush:structure/temple/3

execute if score TimeElapsed rsr_game matches 13 run function rocketspleefrush:disintegrate/temple/1

execute if score TimeElapsed rsr_game matches 11 run summon item_display -8036 169 -8000 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat4","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 11 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 14 run kill @e[type=item_display,tag=nextplatform,tag=plat4]
execute if score TimeElapsed rsr_game matches 14 run function rocketspleefrush:structure/temple/4

execute if score TimeElapsed rsr_game matches 16 run function rocketspleefrush:disintegrate/temple/2

execute if score TimeElapsed rsr_game matches 15 run summon item_display -8047 169 -8015 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat5","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 15 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 18 run kill @e[type=item_display,tag=nextplatform,tag=plat5]
execute if score TimeElapsed rsr_game matches 18 run function rocketspleefrush:structure/temple/5

execute if score TimeElapsed rsr_game matches 20 run function rocketspleefrush:disintegrate/temple/3

execute if score TimeElapsed rsr_game matches 17 run summon item_display -8047 172 -8034 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat6","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 17 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 20 run kill @e[type=item_display,tag=nextplatform,tag=plat6]
execute if score TimeElapsed rsr_game matches 20 run function rocketspleefrush:structure/temple/6
execute if score TimeElapsed rsr_game matches 20 run scoreboard players set $minY rsr_playerY 155

execute if score TimeElapsed rsr_game matches 22 run function rocketspleefrush:disintegrate/temple/4

execute if score TimeElapsed rsr_game matches 19 run summon item_display -8047 172 -8050 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat7","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 19 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 22 run kill @e[type=item_display,tag=nextplatform,tag=plat7]
execute if score TimeElapsed rsr_game matches 22 run function rocketspleefrush:structure/temple/7

execute if score TimeElapsed rsr_game matches 24 run function rocketspleefrush:disintegrate/temple/5

execute if score TimeElapsed rsr_game matches 21 run summon item_display -8047 172 -8066 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat8","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 21 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 24 run kill @e[type=item_display,tag=nextplatform,tag=plat8]
execute if score TimeElapsed rsr_game matches 24 run function rocketspleefrush:structure/temple/8

execute if score TimeElapsed rsr_game matches 26 run function rocketspleefrush:disintegrate/temple/6


execute if score TimeElapsed rsr_game matches 24 run summon item_display -8047 172 -8081 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat9","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 24 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 27 run kill @e[type=item_display,tag=nextplatform,tag=plat9]
execute if score TimeElapsed rsr_game matches 27 run function rocketspleefrush:structure/temple/9

execute if score TimeElapsed rsr_game matches 29 run function rocketspleefrush:disintegrate/temple/7
# 10 - 19
execute if score TimeElapsed rsr_game matches 26 run summon item_display -8030 172 -8092 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat10","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 26 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 29 run kill @e[type=item_display,tag=nextplatform,tag=plat10]
execute if score TimeElapsed rsr_game matches 29 run function rocketspleefrush:structure/temple/10

execute if score TimeElapsed rsr_game matches 31 run function rocketspleefrush:disintegrate/temple/8

execute if score TimeElapsed rsr_game matches 28 run summon item_display -8014 172 -8092 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat11","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 28 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 31 run kill @e[type=item_display,tag=nextplatform,tag=plat11]
execute if score TimeElapsed rsr_game matches 31 run function rocketspleefrush:structure/temple/11

execute if score TimeElapsed rsr_game matches 33 run function rocketspleefrush:disintegrate/temple/9

execute if score TimeElapsed rsr_game matches 31 run summon item_display -7997 172 -8092 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat12","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 31 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 34 run kill @e[type=item_display,tag=nextplatform,tag=plat12]
execute if score TimeElapsed rsr_game matches 34 run function rocketspleefrush:structure/temple/12

execute if score TimeElapsed rsr_game matches 36 run function rocketspleefrush:disintegrate/temple/10

execute if score TimeElapsed rsr_game matches 37 run summon item_display -7982 172 -8092 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat13","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 37 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 40 run kill @e[type=item_display,tag=nextplatform,tag=plat13]
execute if score TimeElapsed rsr_game matches 40 run function rocketspleefrush:structure/temple/13

execute if score TimeElapsed rsr_game matches 42 run function rocketspleefrush:disintegrate/temple/11

execute if score TimeElapsed rsr_game matches 40 run summon item_display -7965 172 -8092 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat14","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 40 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 43 run kill @e[type=item_display,tag=nextplatform,tag=plat14]
execute if score TimeElapsed rsr_game matches 43 run function rocketspleefrush:structure/temple/14

execute if score TimeElapsed rsr_game matches 45 run function rocketspleefrush:disintegrate/temple/12

execute if score TimeElapsed rsr_game matches 43 run summon item_display -7950 174 -8112 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat15","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 43 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 46 run kill @e[type=item_display,tag=nextplatform,tag=plat15]
execute if score TimeElapsed rsr_game matches 46 run function rocketspleefrush:structure/temple/15
execute if score TimeElapsed rsr_game matches 46 run scoreboard players set $minY rsr_playerY 157

execute if score TimeElapsed rsr_game matches 48 run function rocketspleefrush:disintegrate/temple/13

execute if score TimeElapsed rsr_game matches 46 run summon item_display -7960 177 -8123 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat16","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 46 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 49 run kill @e[type=item_display,tag=nextplatform,tag=plat16]
execute if score TimeElapsed rsr_game matches 49 run function rocketspleefrush:structure/temple/16
execute if score TimeElapsed rsr_game matches 49 run scoreboard players set $minY rsr_playerY 159

execute if score TimeElapsed rsr_game matches 51 run function rocketspleefrush:disintegrate/temple/14

execute if score TimeElapsed rsr_game matches 49 run summon item_display -7966 177 -8133 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat17","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 49 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 52 run kill @e[type=item_display,tag=nextplatform,tag=plat17]
execute if score TimeElapsed rsr_game matches 52 run function rocketspleefrush:structure/temple/17

execute if score TimeElapsed rsr_game matches 53 run function rocketspleefrush:disintegrate/temple/15

execute if score TimeElapsed rsr_game matches 52 run summon item_display -7966 179 -8155 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat18","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 52 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 55 run kill @e[type=item_display,tag=nextplatform,tag=plat18]
execute if score TimeElapsed rsr_game matches 55 run function rocketspleefrush:structure/temple/18
execute if score TimeElapsed rsr_game matches 55 run scoreboard players set $minY rsr_playerY 161

execute if score TimeElapsed rsr_game matches 57 run function rocketspleefrush:disintegrate/temple/16

execute if score TimeElapsed rsr_game matches 55 run summon item_display -7952 179 -8161 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["plat19","rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 55 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 58 run kill @e[type=item_display,tag=nextplatform,tag=plat19]
execute if score TimeElapsed rsr_game matches 58 run function rocketspleefrush:structure/temple/19

execute if score TimeElapsed rsr_game matches 59 run function rocketspleefrush:disintegrate/temple/17