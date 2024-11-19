
scoreboard objectives add rsr_onground dummy

scoreboard players set @a rsr_dura_anim_frame 0
scoreboard players set @a rsr_dura_anim_type 0
## 动画类型：
# 0: 无特殊
# 1: 清除Struck Stacks的动画，持续9t然后切换到无特殊
# 11-16: 常态STRUCK, always
# 21-26：受击时的STRUCK, 持续2t然后切换到常态

scoreboard players set @a rsr_struck_invinci 10
scoreboard players set @a rsr_player_struck_stacks 0
scoreboard players operation @a rsr_player_dura = max_dura rsr_game

function rocketspleefrush:durability/loop