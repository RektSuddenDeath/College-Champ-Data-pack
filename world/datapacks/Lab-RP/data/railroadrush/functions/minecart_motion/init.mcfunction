
scoreboard objectives add rrr_last_motion_x dummy
scoreboard objectives add rrr_last_motion_y dummy
scoreboard objectives add rrr_last_motion_z dummy

scoreboard objectives add rrr_last_rotation_x dummy
scoreboard objectives add rrr_last_rotation_y dummy

scoreboard objectives add rrr_this_rotation_x dummy
scoreboard objectives add rrr_this_rotation_y dummy

scoreboard objectives add rrr_last_pos_x dummy
scoreboard objectives add rrr_last_pos_y dummy
scoreboard objectives add rrr_last_pos_z dummy

scoreboard objectives add rrr_this_pos_x dummy
scoreboard objectives add rrr_this_pos_y dummy
scoreboard objectives add rrr_this_pos_z dummy

scoreboard objectives add rrr_diff_pos_x dummy
scoreboard objectives add rrr_diff_pos_y dummy
scoreboard objectives add rrr_diff_pos_z dummy

scoreboard objectives add rrr_is_straight dummy
scoreboard players set 90 rrr_is_straight 90
scoreboard players set -1 rrr_is_straight -1

function railroadrush:minecart_motion/keep_motion