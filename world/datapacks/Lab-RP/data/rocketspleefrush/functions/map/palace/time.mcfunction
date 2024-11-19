
scoreboard players add TimeElapsed rsr_game 1

execute if score TimeElapsed rsr_game matches 35 run summon item_display -7972 165 -7963 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 35 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 39 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 39 run function rocketspleefrush:structure/palace/1b
execute if score TimeElapsed rsr_game matches 40 run function rocketspleefrush:disintegrate/palace/1
execute if score TimeElapsed rsr_game matches 39 run scoreboard players set $minY rsr_playerY 139

execute if score TimeElapsed rsr_game matches 75 run summon item_display -7952 158 -7992 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 75 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 79 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 79 run function rocketspleefrush:structure/palace/2
execute if score TimeElapsed rsr_game matches 80 run function rocketspleefrush:disintegrate/palace/1b
execute if score TimeElapsed rsr_game matches 79 run scoreboard players set $minY rsr_playerY 137

execute if score TimeElapsed rsr_game matches 104 run summon item_display -7964 155 -8050 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 104 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 108 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 108 run function rocketspleefrush:structure/palace/3
execute if score TimeElapsed rsr_game matches 109 run function rocketspleefrush:disintegrate/palace/2
execute if score TimeElapsed rsr_game matches 108 run scoreboard players set $minY rsr_playerY 129

# execute if score TimeElapsed rsr_game matches 110 run execute as @a at @s run playsound updraftremovedsfx record @s ~ ~ ~ 1 1
# execute if score TimeElapsed rsr_game matches 110 run title @a times 10 40 10
# execute if score TimeElapsed rsr_game matches 110 run title @a title ""
# execute if score TimeElapsed rsr_game matches 110 run title @a subtitle "§c(§r鼱§c) §e抬升道具§f将在10秒后移除。"
# execute if score TimeElapsed rsr_game matches 110 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1

# execute if score TimeElapsed rsr_game matches 120 run clear @a ender_pearl
# execute if score TimeElapsed rsr_game matches 120 run tellraw @a "§c(§r鼱§c) §c§l抬升道具已移除！"

execute if score TimeElapsed rsr_game matches 140 run summon item_display -7972 142 -8093 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 140 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 144 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 144 run function rocketspleefrush:structure/palace/4
execute if score TimeElapsed rsr_game matches 145 run function rocketspleefrush:disintegrate/palace/3
execute if score TimeElapsed rsr_game matches 144 run scoreboard players set $minY rsr_playerY 118

execute if score TimeElapsed rsr_game matches 170 run summon item_display -8006 138 -8071 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 170 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 174 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 174 run function rocketspleefrush:structure/palace/5
execute if score TimeElapsed rsr_game matches 175 run function rocketspleefrush:disintegrate/palace/4
execute if score TimeElapsed rsr_game matches 174 run scoreboard players set $minY rsr_playerY 108

execute if score TimeElapsed rsr_game matches 192 run summon item_display -8020 125 -8102 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 192 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 196 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 196 run function rocketspleefrush:structure/palace/6
execute if score TimeElapsed rsr_game matches 197 run function rocketspleefrush:disintegrate/palace/5
execute if score TimeElapsed rsr_game matches 196 run scoreboard players set $minY rsr_playerY 103

execute if score TimeElapsed rsr_game matches 211 run summon item_display -8045 116 -8096 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 211 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 215 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 215 run function rocketspleefrush:structure/palace/7
execute if score TimeElapsed rsr_game matches 216 run function rocketspleefrush:disintegrate/palace/6
execute if score TimeElapsed rsr_game matches 215 run scoreboard players set $minY rsr_playerY 93

execute if score TimeElapsed rsr_game matches 230 run function rocketspleefrush:disintegrate/palace/7
execute if score TimeElapsed rsr_game matches 226 run tellraw @a "§c(§r鼱§c) §c§l最后一个平台将在5秒后移除！"
execute if score TimeElapsed rsr_game matches 226 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1

# 1st Updraft
execute if score TimeElapsed rsr_game matches 50 run title @a times 10 40 10
execute if score TimeElapsed rsr_game matches 50 run title @a title ""
execute if score TimeElapsed rsr_game matches 50 run title @a subtitle "§e(§r獍§e) §e第1个§6抬升道具§e将在10秒后移除。"
execute if score TimeElapsed rsr_game matches 50 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1

execute if score TimeElapsed rsr_game matches 60 run clear @a[scores={rsr_round_updraft=0}] ender_pearl 1
execute if score TimeElapsed rsr_game matches 60 run tellraw @a "§c(§r鼱§c) §6第1个§c抬升道具§6已移除！"

# 2nd Updraft
execute if score TimeElapsed rsr_game matches 130 run title @a times 10 40 10
execute if score TimeElapsed rsr_game matches 130 run title @a title ""
execute if score TimeElapsed rsr_game matches 130 run title @a subtitle "§e(§r獍§e) §e第2个§6抬升道具§e将在10秒后移除。"
execute if score TimeElapsed rsr_game matches 130 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1

execute if score TimeElapsed rsr_game matches 140 run clear @a ender_pearl
execute if score TimeElapsed rsr_game matches 140 run tellraw @a "§c(§r鼱§c) §6第2个§c抬升道具§6已移除！"

# Struck Damage Increase

execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 80 run scoreboard players operation dura_loss_per_struck rsr_game = struck_per_stack_2 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 80 run scoreboard players operation dura_loss_per_tick rsr_game = dura_loss_2 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 80 run tellraw @a ["","§b[§r牖§b] ","§b难度提升至",{"text": "75% 直击伤害, 125%耐久流失速度","color": "#E3E3E3"},"§b！"]

execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 160 run scoreboard players operation dura_loss_per_struck rsr_game = struck_per_stack_3 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 160 run scoreboard players operation dura_loss_per_tick rsr_game = dura_loss_3 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 160 run tellraw @a ["","§b[§r牖§b] ","§b难度提升至",{"text": "100% 直击伤害, 150%耐久流失速度","color": "#E3E3E3"},"§b！"]


execute as @e[type=item_display,tag=!moved,tag=nextplatform] at @s run tp @s ~ ~2 ~ 
execute as @e[type=item_display,tag=!moved,tag=nextplatform] run tag @s add moved

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/palace/time 1s