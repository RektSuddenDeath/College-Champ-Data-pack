
kill @e[type=ender_pearl]
scoreboard players set @a[scores={updraft=1..}] rsr_updraft_time 5
effect give @a[scores={updraft=1..}] levitation 1 100 true

# Dura Regain
execute if score durability rsr_game matches 1 run scoreboard players operation @a[scores={updraft=1..}] rsr_player_struck_stacks -= updraft_cleanse_stacks rsr_game
execute if score durability rsr_game matches 1 run scoreboard players operation @a[scores={updraft=1..}] rsr_player_dura += updraft_dura_gain rsr_game

execute if score durability rsr_game matches 1 run scoreboard players set @a[scores={updraft=1..,rsr_player_struck_stacks=..0}] rsr_player_struck_stacks 0
execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..}] if score @s rsr_player_dura > max_dura rsr_game run scoreboard players operation @s rsr_player_dura = max_dura rsr_game

execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..}] run scoreboard players set @s rsr_dura_anim_frame 0

execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=0}] run scoreboard players set @s rsr_dura_anim_type 1

execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=1}] run scoreboard players set @s rsr_dura_anim_type 11
execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=2}] run scoreboard players set @s rsr_dura_anim_type 12
execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=3}] run scoreboard players set @s rsr_dura_anim_type 13
execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=4}] run scoreboard players set @s rsr_dura_anim_type 14
execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=5}] run scoreboard players set @s rsr_dura_anim_type 15
execute if score durability rsr_game matches 1 run execute as @a[scores={updraft=1..,rsr_player_struck_stacks=6..}] run scoreboard players set @s rsr_dura_anim_type 16

# Updraft Time
scoreboard players remove @a[scores={rsr_updraft_time=0..}] rsr_updraft_time 1
effect clear @a[scores={rsr_updraft_time=0}] levitation

scoreboard players set @a updraft 0
execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:updraft/use 1t