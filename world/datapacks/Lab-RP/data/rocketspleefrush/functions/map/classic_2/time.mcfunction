
scoreboard players add TimeElapsed rsr_game 1

# Island 1-7
execute if score TimeElapsed rsr_game matches 25 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 48 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 72 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 93 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 113 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 131 run function rocketspleefrush:map/classic_2/generate_next_arrow

execute if score TimeElapsed rsr_game matches 29 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 52 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 76 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 97 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 117 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 135 run function rocketspleefrush:map/classic_2/generate_next_island

execute if score TimeElapsed rsr_game matches 33 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 55 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 79 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 100 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 120 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 138 run function rocketspleefrush:map/classic_2/disintegrate_next_island


# Island 8-12
execute if score TimeElapsed rsr_game matches 150 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 169 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 185 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 201 run function rocketspleefrush:map/classic_2/generate_next_arrow
execute if score TimeElapsed rsr_game matches 212 run function rocketspleefrush:map/classic_2/generate_next_arrow

execute if score TimeElapsed rsr_game matches 154 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 173 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 189 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 205 run function rocketspleefrush:map/classic_2/generate_next_island
execute if score TimeElapsed rsr_game matches 216 run function rocketspleefrush:map/classic_2/generate_next_island

execute if score TimeElapsed rsr_game matches 157 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 176 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 192 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 208 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 220 run function rocketspleefrush:map/classic_2/disintegrate_next_island

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

execute if score TimeElapsed rsr_game matches 230 run function rocketspleefrush:map/classic_2/disintegrate_next_island
execute if score TimeElapsed rsr_game matches 226 run tellraw @a "§c(§r鼱§c) §c§l最后一个平台将在5秒后移除！"
execute if score TimeElapsed rsr_game matches 226 run execute as @a at @s run playsound sound.mapupdate record @s ~ ~ ~ 1

# Struck Damage Increase

execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 80 run scoreboard players operation dura_loss_per_struck rsr_game = struck_per_stack_2 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 80 run scoreboard players operation dura_loss_per_tick rsr_game = dura_loss_2 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 80 run tellraw @a ["","§b[§r牖§b] ","§b难度提升至",{"text": "75% 直击伤害, 125%耐久流失速度","color": "#E3E3E3"},"§b！"]

execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 160 run scoreboard players operation dura_loss_per_struck rsr_game = struck_per_stack_3 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 160 run scoreboard players operation dura_loss_per_tick rsr_game = dura_loss_3 rsr_game
execute if score durability rsr_game matches 1 if score TimeElapsed rsr_game matches 160 run tellraw @a ["","§b[§r牖§b] ","§b难度提升至",{"text": "100% 直击伤害, 150%耐久流失速度","color": "#E3E3E3"},"§b！"]


#execute as @e[type=item_display,tag=!moved,tag=nextplatform] at @s run tp @s ~ ~2 ~ 
#execute as @e[type=item_display,tag=!moved,tag=nextplatform] run tag @s add moved

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/classic_2/time 1s