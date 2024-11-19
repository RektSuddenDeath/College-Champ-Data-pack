
scoreboard players add TimeElapsed rsr_game 1

execute if score TimeElapsed rsr_game matches 23 run summon item_display -7955 174 -8031 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 23 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 27 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 27 run function rocketspleefrush:structure/classic/2
execute if score TimeElapsed rsr_game matches 29 run function rocketspleefrush:disintegrate/classic/1
execute if score TimeElapsed rsr_game matches 27 run scoreboard players set $minY rsr_playerY 144

execute if score TimeElapsed rsr_game matches 61 run summon item_display -7937 165 -7992 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 61 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 65 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 65 run function rocketspleefrush:structure/classic/3
execute if score TimeElapsed rsr_game matches 67 run function rocketspleefrush:disintegrate/classic/2
execute if score TimeElapsed rsr_game matches 65 run scoreboard players set $minY rsr_playerY 133

execute if score TimeElapsed rsr_game matches 96 run summon item_display -7915 151 -8024 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 96 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 100 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 100 run function rocketspleefrush:structure/classic/4
execute if score TimeElapsed rsr_game matches 102 run function rocketspleefrush:disintegrate/classic/3
execute if score TimeElapsed rsr_game matches 100 run scoreboard players set $minY rsr_playerY 126

# execute if score TimeElapsed rsr_game matches 110 run execute as @a at @s run playsound updraftremovedsfx record @s ~ ~ ~ 1 1
# execute if score TimeElapsed rsr_game matches 110 run title @a times 10 40 10
# execute if score TimeElapsed rsr_game matches 110 run title @a title ""
# execute if score TimeElapsed rsr_game matches 110 run title @a subtitle "§c(§r鼱§c) §e抬升道具§f将在10秒后移除。"
# execute if score TimeElapsed rsr_game matches 110 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1

# execute if score TimeElapsed rsr_game matches 120 run clear @a ender_pearl
# execute if score TimeElapsed rsr_game matches 120 run tellraw @a "§c(§r鼱§c) §c§l抬升道具已移除！"

execute if score TimeElapsed rsr_game matches 126 run summon item_display -7940 140 -8057 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 126 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 130 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 130 run function rocketspleefrush:structure/classic/5
execute if score TimeElapsed rsr_game matches 132 run function rocketspleefrush:disintegrate/classic/4
execute if score TimeElapsed rsr_game matches 130 run scoreboard players set $minY rsr_playerY 115

execute if score TimeElapsed rsr_game matches 141 run summon item_display -7908 128 -8058 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 141 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 145 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 145 run function rocketspleefrush:structure/classic/6
execute if score TimeElapsed rsr_game matches 147 run function rocketspleefrush:disintegrate/classic/5
execute if score TimeElapsed rsr_game matches 145 run scoreboard players set $minY rsr_playerY 107

execute if score TimeElapsed rsr_game matches 161 run summon item_display -7895 123 -8031 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 161 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 165 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 165 run function rocketspleefrush:structure/classic/7
execute if score TimeElapsed rsr_game matches 167 run function rocketspleefrush:disintegrate/classic/6
execute if score TimeElapsed rsr_game matches 165 run scoreboard players set $minY rsr_playerY 98

execute if score TimeElapsed rsr_game matches 186 run summon item_display -7876 113 -8058 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 186 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 190 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 190 run function rocketspleefrush:structure/classic/8
execute if score TimeElapsed rsr_game matches 191 run function rocketspleefrush:disintegrate/classic/7
execute if score TimeElapsed rsr_game matches 190 run scoreboard players set $minY rsr_playerY 93

execute if score TimeElapsed rsr_game matches 201 run summon item_display -7892 103 -8075 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 201 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 205 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 205 run function rocketspleefrush:structure/classic/9
execute if score TimeElapsed rsr_game matches 206 run function rocketspleefrush:disintegrate/classic/8
execute if score TimeElapsed rsr_game matches 205 run scoreboard players set $minY rsr_playerY 84

execute if score TimeElapsed rsr_game matches 216 run summon item_display -7917 93 -8090 {billboard:"fixed",Glowing:1b,glow_color_override:16746496,interpolation_duration:0,start_interpolation:0,transformation:[1.500f, 0.000f, 0.000f,0.000f,0.000f, 1.500f, 0.000f,-0.750f,0.000f, 0.000f, 1.500f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:10000011}},Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 216 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 220 run kill @e[type=item_display,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 220 run function rocketspleefrush:structure/classic/10
execute if score TimeElapsed rsr_game matches 221 run function rocketspleefrush:disintegrate/classic/9
execute if score TimeElapsed rsr_game matches 220 run scoreboard players set $minY rsr_playerY 74

execute if score TimeElapsed rsr_game matches 230 run function rocketspleefrush:disintegrate/classic/10
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

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/classic/time 1s