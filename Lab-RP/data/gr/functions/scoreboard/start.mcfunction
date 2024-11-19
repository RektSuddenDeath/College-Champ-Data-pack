
function master:timer/timeleft/15min

# Add a line of space
scoreboard players set §3 gr_redsb 1
scoreboard players set §3 gr_bluesb 1
scoreboard players set §3 gr_greensb 1
scoreboard players set §3 gr_yellowsb 1
scoreboard players set §3 gr_cyansb 1
scoreboard players set §3 gr_orangesb 1
scoreboard players set §3 gr_purplesb 1
scoreboard players set §3 gr_pinksb 1

team modify placeholder_3 suffix ""
team modify placeholder_3 prefix ""
# Add a line that displays current room
scoreboard players set var_room_name gr_redsb 0
scoreboard players set var_room_name gr_bluesb 0
scoreboard players set var_room_name gr_greensb 0
scoreboard players set var_room_name gr_yellowsb 0
scoreboard players set var_room_name gr_cyansb 0
scoreboard players set var_room_name gr_orangesb 0
scoreboard players set var_room_name gr_purplesb 0
scoreboard players set var_room_name gr_pinksb 0

# team modify placeholder_r1 prefix "§a§l当前房间: "
# team modify placeholder_b1 prefix "§a§l当前房间: "
# team modify placeholder_g1 prefix "§a§l当前房间: "
# team modify placeholder_y1 prefix "§a§l当前房间: "
# team modify placeholder_cy1 prefix "§a§l当前房间: "
# team modify placeholder_or1 prefix "§a§l当前房间: "
# team modify placeholder_pi1 prefix "§a§l当前房间: "
# team modify placeholder_pu1 prefix "§a§l当前房间: "

scoreboard players display name var_room_name gr_redsb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_bluesb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_greensb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_yellowsb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_orangesb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_pinksb "§a§l当前房间：§rn/a"
scoreboard players display name var_room_name gr_purplesb "§a§l当前房间：§rn/a"