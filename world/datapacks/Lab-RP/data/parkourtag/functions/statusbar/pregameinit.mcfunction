
# Reset value bar, and player names
bossbar set pkt_match1 value 1200
bossbar set pkt_match2 value 1200
bossbar set pkt_match3 value 1200
bossbar set pkt_match4 value 1200

bossbar set pkt_match1 color green
bossbar set pkt_match2 color green
bossbar set pkt_match3 color green
bossbar set pkt_match4 color green

bossbar set pkt_players_red name ""
bossbar set pkt_players_blue name ""
bossbar set pkt_players_green name ""
bossbar set pkt_players_yellow name ""
bossbar set pkt_players_cyan name ""
bossbar set pkt_players_pink name ""
bossbar set pkt_players_orange name ""
bossbar set pkt_players_purple name ""
# Distribute bossbar display according to the match #No
bossbar set pkt_match1 players
bossbar set pkt_match2 players
bossbar set pkt_match3 players
bossbar set pkt_match4 players

bossbar set pkt_players_red players
bossbar set pkt_players_blue players
bossbar set pkt_players_green players
bossbar set pkt_players_yellow players
bossbar set pkt_players_cyan players
bossbar set pkt_players_pink players
bossbar set pkt_players_orange players
bossbar set pkt_players_purple players

# Match
execute if score round pkt_game matches 1 run function parkourtag:statusbar/round/1
execute if score round pkt_game matches 2 run function parkourtag:statusbar/round/2
execute if score round pkt_game matches 3 run function parkourtag:statusbar/round/3
execute if score round pkt_game matches 4 run function parkourtag:statusbar/round/4
execute if score round pkt_game matches 5 run function parkourtag:statusbar/round/5
execute if score round pkt_game matches 6 run function parkourtag:statusbar/round/6
execute if score round pkt_game matches 7 run function parkourtag:statusbar/round/7

