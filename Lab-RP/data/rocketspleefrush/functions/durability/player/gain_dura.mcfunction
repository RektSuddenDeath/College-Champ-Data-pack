## 动画类型：
# 0: 无特殊
# 1: 清除Struck Stacks的动画，持续9t然后切换到无特殊
# 11-16: 常态STRUCK, always until cleared out.
# 21-26：受击时的STRUCK, 持续2t然后切换到常态


scoreboard players operation @s rsr_player_dura += dura_gain_per_tick rsr_game
execute if score @s rsr_player_dura >= max_dura rsr_game run scoreboard players operation @s rsr_player_dura = max_dura rsr_game

# Cleanse struck stacks
execute if score @s rsr_player_struck_stacks matches 1.. run scoreboard players set @s rsr_dura_anim_type 1
execute if score @s rsr_player_struck_stacks matches 1.. run scoreboard players set @s rsr_dura_anim_frame 0

execute if score @s rsr_player_struck_stacks matches 1.. run scoreboard players set @s rsr_player_struck_stacks 0

