
scoreboard players set timeleft_tick pkt_game 1200

# Assign each player an ID from 1-4
scoreboard objectives remove pkt_sbar_pid
scoreboard objectives add pkt_sbar_pid dummy
scoreboard players set @a[team=!spec,tag=runner] pkt_sbar_pid 0

scoreboard players set @r[team=red,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=blue,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=green,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=yellow,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=cyan,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=pink,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=orange,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1
scoreboard players set @r[team=purple,scores={pkt_sbar_pid=0}] pkt_sbar_pid 1

scoreboard players set @r[team=red,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=blue,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=green,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=yellow,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=cyan,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=pink,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=orange,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2
scoreboard players set @r[team=purple,scores={pkt_sbar_pid=0}] pkt_sbar_pid 2

scoreboard players set @r[team=red,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=blue,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=green,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=yellow,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=cyan,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=pink,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=orange,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
scoreboard players set @r[team=purple,scores={pkt_sbar_pid=0}] pkt_sbar_pid 3
function parkourtag:statusbar/update