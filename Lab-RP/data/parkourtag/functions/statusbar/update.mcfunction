# Time Bar
scoreboard players remove timeleft_tick pkt_game 1

execute store result bossbar pkt_match1 value run scoreboard players get timeleft_tick pkt_game
execute store result bossbar pkt_match2 value run scoreboard players get timeleft_tick pkt_game
execute store result bossbar pkt_match3 value run scoreboard players get timeleft_tick pkt_game
execute store result bossbar pkt_match4 value run scoreboard players get timeleft_tick pkt_game

execute if score timeleft_tick pkt_game matches 801..1200 run bossbar set pkt_match1 color green
execute if score timeleft_tick pkt_game matches 801..1200 run bossbar set pkt_match2 color green
execute if score timeleft_tick pkt_game matches 801..1200 run bossbar set pkt_match3 color green
execute if score timeleft_tick pkt_game matches 801..1200 run bossbar set pkt_match4 color green

execute if score timeleft_tick pkt_game matches 401..800 run bossbar set pkt_match1 color yellow
execute if score timeleft_tick pkt_game matches 401..800 run bossbar set pkt_match2 color yellow
execute if score timeleft_tick pkt_game matches 401..800 run bossbar set pkt_match3 color yellow
execute if score timeleft_tick pkt_game matches 401..800 run bossbar set pkt_match4 color yellow

execute if score timeleft_tick pkt_game matches ..400 run bossbar set pkt_match1 color red
execute if score timeleft_tick pkt_game matches ..400 run bossbar set pkt_match2 color red
execute if score timeleft_tick pkt_game matches ..400 run bossbar set pkt_match3 color red
execute if score timeleft_tick pkt_game matches ..400 run bossbar set pkt_match4 color red

# Players Bar
bossbar set pkt_players_red name ["",{"selector":"@p[team=red,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=red,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=red,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=red,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=red,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=red,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_blue name ["",{"selector":"@p[team=blue,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=blue,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=blue,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=blue,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=blue,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=blue,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_green name ["",{"selector":"@p[team=green,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=green,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=green,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=green,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=green,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=green,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_yellow name ["",{"selector":"@p[team=yellow,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=yellow,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=yellow,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=yellow,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=yellow,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=yellow,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_cyan name ["",{"selector":"@p[team=cyan,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=cyan,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=cyan,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=cyan,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=cyan,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=cyan,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_pink name ["",{"selector":"@p[team=pink,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=pink,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=pink,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=pink,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=pink,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=pink,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_orange name ["",{"selector":"@p[team=orange,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=orange,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=orange,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=orange,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=orange,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=orange,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]
bossbar set pkt_players_purple name ["",{"selector":"@p[team=purple,scores={pkt_sbar_pid=1},tag=runner]"},{"selector":"@p[team=purple,scores={pkt_sbar_pid=1},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=purple,scores={pkt_sbar_pid=2},tag=runner]"},{"selector":"@p[team=purple,scores={pkt_sbar_pid=2},tag=!runner]","color": "dark_gray","strikethrough": true},"  ",{"selector":"@p[team=purple,scores={pkt_sbar_pid=3},tag=runner]"},{"selector":"@p[team=purple,scores={pkt_sbar_pid=3},tag=!runner]","color": "dark_gray","strikethrough": true}]

execute if score RoundActive tourney_stats matches 1 run schedule function parkourtag:statusbar/update 1t