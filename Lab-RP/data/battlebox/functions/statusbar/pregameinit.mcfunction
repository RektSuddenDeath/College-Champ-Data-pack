
# Reset value bar, and player names
bossbar set bb_match1 value 1200
bossbar set bb_match2 value 1200
bossbar set bb_match3 value 1200
bossbar set bb_match4 value 1200

bossbar set bb_match1 color green
bossbar set bb_match2 color green
bossbar set bb_match3 color green
bossbar set bb_match4 color green

bossbar set bb_players_red name ""
bossbar set bb_players_blue name ""
bossbar set bb_players_green name ""
bossbar set bb_players_yellow name ""
bossbar set bb_players_cyan name ""
bossbar set bb_players_pink name ""
bossbar set bb_players_orange name ""
bossbar set bb_players_purple name ""
# Distribute bossbar display according to the match #No
bossbar set bb_match1 players
bossbar set bb_match2 players
bossbar set bb_match3 players
bossbar set bb_match4 players

bossbar set bb_players_red players
bossbar set bb_players_blue players
bossbar set bb_players_green players
bossbar set bb_players_yellow players
bossbar set bb_players_cyan players
bossbar set bb_players_pink players
bossbar set bb_players_orange players
bossbar set bb_players_purple players

# Match
execute if score round bb_game matches 1 run function battlebox:statusbar/round/1
execute if score round bb_game matches 2 run function battlebox:statusbar/round/2
execute if score round bb_game matches 3 run function battlebox:statusbar/round/3
execute if score round bb_game matches 4 run function battlebox:statusbar/round/4
execute if score round bb_game matches 5 run function battlebox:statusbar/round/5
execute if score round bb_game matches 6 run function battlebox:statusbar/round/6
execute if score round bb_game matches 7 run function battlebox:statusbar/round/7

# Assign each player an ID from 1-4
scoreboard objectives remove bb_statusbar_pid
scoreboard objectives add bb_statusbar_pid dummy
scoreboard players set @a[team=!spec] bb_statusbar_pid 0

scoreboard players set @r[team=red,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=blue,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=green,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=yellow,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=cyan,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=pink,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=orange,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1
scoreboard players set @r[team=purple,scores={bb_statusbar_pid=0}] bb_statusbar_pid 1

scoreboard players set @r[team=red,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=blue,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=green,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=yellow,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=cyan,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=pink,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=orange,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2
scoreboard players set @r[team=purple,scores={bb_statusbar_pid=0}] bb_statusbar_pid 2

scoreboard players set @r[team=red,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=blue,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=green,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=yellow,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=cyan,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=pink,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=orange,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3
scoreboard players set @r[team=purple,scores={bb_statusbar_pid=0}] bb_statusbar_pid 3

scoreboard players set @r[team=red,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=blue,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=green,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=yellow,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=cyan,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=pink,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=orange,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4
scoreboard players set @r[team=purple,scores={bb_statusbar_pid=0}] bb_statusbar_pid 4