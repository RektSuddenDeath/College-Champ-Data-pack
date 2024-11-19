
scoreboard objectives add uas_game dummy
scoreboard players set gameflag uas_game 0

# 微状态，每个区域都在1-5(6)之中循环。
## 1: 玩家已全部进入下一区域，但是当前区域目标点未被全部按下
## 2: 当前区域传送台已启动，但是没有玩家正在传送台就位
## 3: 当前区域传送台已启动，有玩家在传送台等待
## 4: 当前区域正在进行一次对决
## 5: 当前区域有传送余量
## 6: 对方已全部进入下一区域，正在等待平台罚时

scoreboard objectives add uas_team_stage_state dummy
scoreboard players set team_1 uas_team_stage_state 1
scoreboard players set team_2 uas_team_stage_state 1

# 传送台计数
## 传送台状态（0是还没被按下，1是可以传送到对决区，2是将传送玩家到上一层）
scoreboard objectives add uas_teleport_pad_status_team_1 dummy
scoreboard objectives add uas_teleport_pad_status_team_2 dummy

scoreboard players set 1 uas_teleport_pad_status_team_1 0
scoreboard players set 2 uas_teleport_pad_status_team_1 0
scoreboard players set 3 uas_teleport_pad_status_team_1 0
scoreboard players set 4 uas_teleport_pad_status_team_1 0

scoreboard players set 1 uas_teleport_pad_status_team_2 0
scoreboard players set 2 uas_teleport_pad_status_team_2 0
scoreboard players set 3 uas_teleport_pad_status_team_2 0
scoreboard players set 4 uas_teleport_pad_status_team_2 0
## 各传送台能传送的玩家计数
scoreboard objectives add uas_teleport_allowed_team_1 dummy
scoreboard objectives add uas_teleport_allowed_team_2 dummy

scoreboard players set 1 uas_teleport_allowed_team_1 0
scoreboard players set 2 uas_teleport_allowed_team_1 0
scoreboard players set 3 uas_teleport_allowed_team_1 0
scoreboard players set 4 uas_teleport_allowed_team_1 0

scoreboard players set 1 uas_teleport_allowed_team_2 0
scoreboard players set 2 uas_teleport_allowed_team_2 0
scoreboard players set 3 uas_teleport_allowed_team_2 0
scoreboard players set 4 uas_teleport_allowed_team_2 0

# 区域等待时间（单队）,当传送台只有一方的玩家，且对方尚未全部到达上一层时，读这个计时器。当这个计时器读到0，允许一名玩家直接被传送到
# 后一层，然后重新计数。
scoreboard objectives add uas_idle_wait dummy
scoreboard players set team_1 uas_idle_wait -1
scoreboard players set team_2 uas_idle_wait -1

# 区域等待时间（共用），第一次对决结束后将读这个计时器，这个计时器读完后立刻开启双方的传送平台，并结束正在进行的对决。
scoreboard objectives add uas_unlock_all_wait dummy
scoreboard players set 1 uas_unlock_all_wait 900
scoreboard players set 2 uas_unlock_all_wait 900
scoreboard players set 3 uas_unlock_all_wait 800
scoreboard players set 4 uas_unlock_all_wait 700

# 区域玩家数记录
scoreboard objectives add uas_player_count_zone_1 dummy
scoreboard objectives add uas_player_count_zone_2 dummy
scoreboard objectives add uas_player_count_zone_3 dummy
scoreboard objectives add uas_player_count_zone_4 dummy
scoreboard objectives add uas_player_count_zone_5 dummy

# 已按下的解锁区数量
scoreboard objectives add uas_pads_held dummy
scoreboard players set team_1 uas_pads_held 0
scoreboard players set team_2 uas_pads_held 0

# 变量
scoreboard objectives add uas_var dummy
scoreboard players set win_completion_requirement uas_var 3
scoreboard players set idle_wait_tick uas_var 400

scoreboard players set pad_to_hold_1 uas_var 1
scoreboard players set pad_to_hold_2 uas_var 2
scoreboard players set pad_to_hold_3 uas_var 2
scoreboard players set pad_to_hold_4 uas_var 3
scoreboard players set pad_to_hold_5 uas_var 4

# 完成玩家数
scoreboard objectives add uas_players_completed dummy
scoreboard players set team_1 uas_players_completed 0
scoreboard players set team_2 uas_players_completed 0

# 各队进度（有玩家达到下一区域即为完成这个区域）
scoreboard objectives add uas_team_progress dummy
scoreboard players set team_1 uas_team_progress 0
scoreboard players set team_2 uas_team_progress 0