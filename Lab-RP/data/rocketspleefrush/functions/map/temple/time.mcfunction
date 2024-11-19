
scoreboard players add TimeElapsed rsr_game 1

execute if score TimeElapsed rsr_game matches 0..60 run function rocketspleefrush:map/temple/split/0_60
execute if score TimeElapsed rsr_game matches 55..120 run function rocketspleefrush:map/temple/split/61_120
execute if score TimeElapsed rsr_game matches 115..180 run function rocketspleefrush:map/temple/split/121_180
execute if score TimeElapsed rsr_game matches 175.. run function rocketspleefrush:map/temple/split/181_240

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

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/temple/time 1s