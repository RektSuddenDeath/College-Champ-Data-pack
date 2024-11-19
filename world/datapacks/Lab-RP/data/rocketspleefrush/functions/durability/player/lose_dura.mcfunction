## 动画类型：
# 0: 无特殊
# 1: 清除Struck Stacks的动画，持续9t然后切换到无特殊
# 11-16: 常态STRUCK, always
# 21-26：受击时的STRUCK, 持续2t然后切换到常态

# Lose dura while not on ground.
scoreboard players operation @s rsr_player_dura -= dura_loss_per_tick rsr_game
# Struck loss.
scoreboard players operation @s rsr_incoming_struck_loss = @s rsr_player_struck_stacks
scoreboard players operation @s rsr_incoming_struck_loss *= dura_loss_per_struck rsr_game
scoreboard players operation @s rsr_player_dura -= @s rsr_incoming_struck_loss
# Dura Can't be less than 0
execute if score @s rsr_player_dura matches ..-1 run scoreboard players set @s rsr_player_dura 0
# FX Warning
execute if score @s rsr_prev_dura > dura_warning_1 rsr_game if score @s rsr_player_dura <= dura_warning_1 rsr_game run execute at @s run playsound sound.rocket_spleef.dura_warning_low record @s ~ ~ ~ 1
execute if score @s rsr_prev_dura > dura_warning_2 rsr_game if score @s rsr_player_dura <= dura_warning_2 rsr_game run execute at @s run playsound sound.rocket_spleef.dura_warning_high record @s ~ ~ ~ 1