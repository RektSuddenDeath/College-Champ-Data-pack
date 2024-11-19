
## CLIP SIZE related
scoreboard players add @a[team=!spec,scores={rsr_dura_clips=..2}] rsr_dura_recharge_tick 1
# Every 10 ticks, gain an recharge bar

# Invinci
scoreboard players remove @a[team=!spec,scores={rsr_struck_invinci=1..}] rsr_struck_invinci 1

## Update Jul 14: Recharge speed increased by 20% (10t->8t)
scoreboard players add @a[team=!spec,scores={rsr_dura_recharge_tick=8..}] rsr_dura_recharges 1
scoreboard players set @a[team=!spec,scores={rsr_dura_recharge_tick=8..}] rsr_dura_recharge_tick 0
# Every 4 Recharge bar, converts to a clip.
execute as @a[team=!spec,gamemode=!spectator,scores={rsr_dura_recharges=4..}] at @s run playsound sound.rocket_spleef.clip_reload record @s ~ ~ ~ 0.5
scoreboard players add @a[team=!spec,gamemode=!spectator,scores={rsr_dura_recharges=4..}] rsr_dura_clips 1
scoreboard players set @a[team=!spec,gamemode=!spectator,scores={rsr_dura_recharges=4..}] rsr_dura_recharges 0

scoreboard players remove @a rsr_internal_cd 1
# Display actionbar for each player
tag @a[team=!spec,gamemode=!spectator] add rsr_bar_queue

## DURABILITY Related
## Reset spec duras
scoreboard players set @a[gamemode=spectator] rsr_player_dura -9000

scoreboard players set @a[nbt={OnGround:1b}] rsr_onground 1
scoreboard players set @a[nbt={OnGround:0b,FallFlying:1b}] rsr_onground 0

execute as @a run scoreboard players operation @s rsr_prev_dura = @s rsr_player_dura

execute as @a[scores={rsr_onground=1}] run function rocketspleefrush:durability/player/gain_dura
execute as @a[scores={rsr_onground=0}] run function rocketspleefrush:durability/player/lose_dura


function rocketspleefrush:durability/abar/loop
## ZERO DURA

execute as @a[scores={rsr_player_dura=..0},tag=!lost_elytra] run item modify entity @s armor.chest rocketspleefrush:clear_elytra_dura
tag @a[scores={rsr_player_dura=..0}] add lost_elytra

execute as @a[scores={rsr_player_dura=1..},tag=lost_elytra] run item modify entity @s armor.chest rocketspleefrush:reset_elytra_dura
execute as @a[scores={rsr_player_dura=1..},tag=lost_elytra] run tag @s remove lost_elytra

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:durability/loop 1t