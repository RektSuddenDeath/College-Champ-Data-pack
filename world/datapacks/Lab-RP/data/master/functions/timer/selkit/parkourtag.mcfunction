
schedule clear master:timer/starting/sec
schedule clear master:timer/nextround/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 0
scoreboard players set second master.timer 16
scoreboard players set pause master.timer 0

team join timer :

scoreboard players reset §7 pkt_sb
scoreboard players reset §7 pkt_sb_red
scoreboard players reset §7 pkt_sb_blue
scoreboard players reset §7 pkt_sb_green
scoreboard players reset §7 pkt_sb_yellow
scoreboard players reset §7 pkt_sb_pink
scoreboard players reset §7 pkt_sb_orange
scoreboard players reset §7 pkt_sb_purple
scoreboard players reset §7 pkt_sb_cyan

scoreboard players set : pkt_sb 13
scoreboard players set : pkt_sb_red 13
scoreboard players set : pkt_sb_blue 13
scoreboard players set : pkt_sb_green 13
scoreboard players set : pkt_sb_yellow 13
scoreboard players set : pkt_sb_pink 13
scoreboard players set : pkt_sb_orange 13
scoreboard players set : pkt_sb_purple 13
scoreboard players set : pkt_sb_cyan 13

function master:timer/selkit/sec