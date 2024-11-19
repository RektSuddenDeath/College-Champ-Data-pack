
# Starts internal cd (0.4s)
execute if score durability rsr_game matches 0 run scoreboard players set @s rsr_internal_cd 2
execute if score durability rsr_game matches 1 run scoreboard players set @s rsr_internal_cd 8

# Immune
execute if score durability rsr_game matches 1 run scoreboard players set @s rsr_struck_invinci 3

# Summons an AEC 1.25 blocks in front of the player
summon area_effect_cloud ^ ^ ^1.25 {Tags:["tnt_motion"]}

# Get the player's coords and the AEC's coords
execute store result score @s rsr_motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s rsr_motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s rsr_motion_z1 run data get entity @s Pos[2] 1000
execute positioned ^ ^ ^1.25 store result score @s rsr_motion_x2 run data get entity @e[type=area_effect_cloud,tag=tnt_motion,sort=nearest,limit=1] Pos[0] 1000
execute positioned ^ ^ ^1.25 store result score @s rsr_motion_y2 run data get entity @e[type=area_effect_cloud,tag=tnt_motion,sort=nearest,limit=1] Pos[1] 1000
execute positioned ^ ^ ^1.25 store result score @s rsr_motion_z2 run data get entity @e[type=area_effect_cloud,tag=tnt_motion,sort=nearest,limit=1] Pos[2] 1000
execute positioned ^ ^ ^1.25 run kill @e[type=area_effect_cloud,tag=tnt_motion,sort=nearest,limit=1]

# Get the coords difference between the AEC and the player, multiplied by 1000.
scoreboard players operation @s rsr_motion_x2 -= @s rsr_motion_x1
scoreboard players operation @s rsr_motion_y2 -= @s rsr_motion_y1
scoreboard players operation @s rsr_motion_z2 -= @s rsr_motion_z1

# Summons a fireball (Explosive Power depends on the selected map)

execute if score map rsr_game matches 1 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 2 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 3 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 4 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 5 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 6 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 7 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 8 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}
execute if score map rsr_game matches 9 anchored eyes run summon fireball ^ ^ ^0.00001 {Fire:-20s,ExplosionPower:3,Tags:["tnt"],Passengers:[{id:"area_effect_cloud",Duration:999999,Tags:["ridingfireball"]}]}

execute anchored eyes positioned ^ ^ ^0.0001 if block ^ ^ ^1 air store result score @e[type=fireball,limit=1,sort=nearest] rsr_fireball_shooter run scoreboard players get @s univ_pid
execute anchored eyes positioned ^ ^ ^0.0001 positioned ~ ~0.3 ~ if block ^ ^ ^1 air store result score @e[type=area_effect_cloud,tag=ridingfireball,limit=1,sort=nearest] rsr_fireball_shooter run scoreboard players get @s univ_pid


execute anchored eyes positioned ^ ^ ^0.0001 if block ^ ^ ^1 air run data modify entity @e[type=fireball,limit=1,sort=nearest] Owner set from entity @s UUID
execute anchored eyes positioned ^ ^ ^0.0001 if block ^ ^ ^1 air run data modify entity @e[type=fireball,limit=1,sort=nearest] Fire set value -20s
execute as @e[type=fireball,tag=tnt] at @s run summon area_effect_cloud ~ ~-1 ~ {Duration:9999999,Tags:["fire"]}
execute as @e[type=area_effect_cloud,tag=fire] at @s run fill ~10 ~6 ~10 ~-10 ~-6 ~-10 air replace fire

# Stores the motion into the fireball and aec
execute anchored eyes positioned ^ ^ ^0.0001 store result entity @e[type=fireball,tag=tnt,limit=1,sort=nearest] Motion[0] double 0.0024 run scoreboard players get @s rsr_motion_x2
execute anchored eyes positioned ^ ^ ^0.0001 store result entity @e[type=fireball,tag=tnt,limit=1,sort=nearest] Motion[1] double 0.0024 run scoreboard players get @s rsr_motion_y2
execute anchored eyes positioned ^ ^ ^0.0001 store result entity @e[type=fireball,tag=tnt,limit=1,sort=nearest] Motion[2] double 0.0024 run scoreboard players get @s rsr_motion_z2

execute anchored eyes positioned ^ ^ ^0.0001 store result score @e[type=fireball,tag=tnt,limit=1,sort=nearest] fixed_rsr_motion_x run scoreboard players get @s rsr_motion_x2
execute anchored eyes positioned ^ ^ ^0.0001 store result score @e[type=fireball,tag=tnt,limit=1,sort=nearest] fixed_rsr_motion_y run scoreboard players get @s rsr_motion_y2
execute anchored eyes positioned ^ ^ ^0.0001 store result score @e[type=fireball,tag=tnt,limit=1,sort=nearest] fixed_rsr_motion_z run scoreboard players get @s rsr_motion_z2

execute anchored eyes positioned ^ ^ ^0.0001 as @e[type=fireball,tag=tnt,limit=1,sort=nearest] on passengers at @s run scoreboard players operation @s fixed_rsr_motion_x = @e[type=fireball,tag=tnt,limit=1,sort=nearest] fixed_rsr_motion_x
execute anchored eyes positioned ^ ^ ^0.0001 as @e[type=fireball,tag=tnt,limit=1,sort=nearest] on passengers at @s run scoreboard players operation @s fixed_rsr_motion_y = @e[type=fireball,tag=tnt,limit=1,sort=nearest] fixed_rsr_motion_y
execute anchored eyes positioned ^ ^ ^0.0001 as @e[type=fireball,tag=tnt,limit=1,sort=nearest] on passengers at @s run scoreboard players operation @s fixed_rsr_motion_z = @e[type=fireball,tag=tnt,limit=1,sort=nearest] fixed_rsr_motion_z

# changes actionbar
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=7}] actionbar ["",{"text": "装填中 (0/3)","bold": true,"color":"red"}," ",{"text": "■","color":"red"},{"text": "■■■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=8}] actionbar ["",{"text": "装填中 (0/3)","bold": true,"color":"red"}," ",{"text": "■■","color":"red"},{"text": "■■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=9}] actionbar ["",{"text": "装填中 (0/3)","bold": true,"color":"red"}," ",{"text": "■■■","color":"red"},{"text": "■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=10}] actionbar ["",{"text": "装填中 (0/3)","bold": true,"color":"red"}," ",{"text": "■■■■","color":"red"},{"text": "■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=11}] actionbar ["",{"text": "装填中 (0/3)","bold": true,"color":"red"}," ",{"text": "■■■■■","color":"red"},{"text": "■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=12}] actionbar ["",{"text": "装填中 (0/3)","bold": true,"color":"red"}," ",{"text": "■■■■■■","color":"red"},{"text": "■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=13}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "","color":"gold"},{"text": "■■■■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=14}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "■","color":"gold"},{"text": "■■■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=15}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "■■","color":"gold"},{"text": "■■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=16}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "■■■","color":"gold"},{"text": "■■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=17}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "■■■■","color":"gold"},{"text": "■■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=18}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "■■■■■","color":"gold"},{"text": "■■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=19}] actionbar ["",{"text": "装填中 (1/3)","bold": true,"color":"gold"}," ",{"text": "■■■■■■","color":"gold"},{"text": "■","color":"black"}]
execute if score durability rsr_game matches 0 run title @s[scores={rsr_reload=20}] actionbar ["",{"text": "装填中 (2/3)","bold": true,"color":"yellow"}," ",{"text": "","color":"yellow"},{"text": "■■■■■■■","color":"black"}]

# Adds Cooldown
# No Dura
execute if score durability rsr_game matches 0 run scoreboard players remove @s rsr_reload 10
execute if score durability rsr_game matches 0 run execute if entity @s[tag=rsr_debug] run scoreboard players add @s rsr_reload 9
# Dura
execute if score durability rsr_game matches 1 run scoreboard players remove @s rsr_dura_clips 1
execute if score durability rsr_game matches 1 run scoreboard players set @s rsr_dura_recharges 0
execute if score durability rsr_game matches 1 run scoreboard players set @s rsr_dura_recharge_tick 0
execute if score durability rsr_game matches 1 run execute if entity @s[tag=rsr_debug] run scoreboard players add @s rsr_dura_recharges 3
execute if score durability rsr_game matches 1 run function test:aug10_fireballtest/durability/abar/self
