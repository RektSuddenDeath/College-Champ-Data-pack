scoreboard objectives add rsr_island dummy
scoreboard objectives add rsr_aec dummy
scoreboard objectives add rsr_disintegrate dummy

scoreboard objectives add rsr_disint_speed dummy

## Momentum Carrying
scoreboard objectives add fixed_rsr_motion_x dummy
scoreboard objectives add fixed_rsr_motion_y dummy
scoreboard objectives add fixed_rsr_motion_z dummy

# Durability Mechanics (Set Enabled when durability score in rsr_game is 1.)
scoreboard objectives add rsr_player_dura dummy
scoreboard objectives add rsr_struck_invinci dummy
scoreboard objectives add rsr_player_struck_stacks dummy
scoreboard objectives add rsr_incoming_struck_loss dummy

## 有Dura时，使用另一套充能规则
scoreboard objectives add rsr_dura_clips dummy
scoreboard objectives add rsr_dura_recharges dummy
scoreboard objectives add rsr_dura_recharge_tick dummy

scoreboard objectives add rsr_dura_recharge_ttl dummy
scoreboard objectives add rsr_dura_bars dummy

## 动画相关
scoreboard objectives add rsr_dura_anim_frame dummy
scoreboard objectives add rsr_dura_anim_type dummy

# Height Warning
scoreboard objectives add rsr_cd_low_height dummy
scoreboard objectives add rsr_elim_height_diff dummy