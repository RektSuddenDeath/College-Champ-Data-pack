
###### 这部分集成到了Durability那块，保证显示内容一致不出时序问题。



# scoreboard players add @a[team=!spec,scores={rsr_dura_clips=..2}] rsr_dura_recharge_tick 1
# # Every 10 ticks, gain an recharge bar
# scoreboard players add @a[team=!spec,scores={rsr_dura_recharge_tick=10..}] rsr_dura_recharges 1
# scoreboard players set @a[team=!spec,scores={rsr_dura_recharge_tick=10..}] rsr_dura_recharge_tick 0
# # Every 4 Recharge bar, converts to a clip.
# execute as @a[team=!spec,gamemode=!spectator,scores={rsr_dura_recharges=4..}] at @s run playsound sound.rocket_spleef.clip_reload record @s ~ ~ ~ 1.2
# scoreboard players add @a[team=!spec,gamemode=!spectator,scores={rsr_dura_recharges=4..}] rsr_dura_clips 1
# scoreboard players set @a[team=!spec,gamemode=!spectator,scores={rsr_dura_recharges=4..}] rsr_dura_recharges 0

# # Display actionbar for each player
# tag @a[team=!spec,gamemode=!spectator] add rsr_bar_queue
# function rocketspleefrush:weapon/abar/loop

# Loop
#execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:weapon/cd_dura 1t