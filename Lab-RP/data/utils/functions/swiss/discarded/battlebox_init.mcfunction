
# Register Win Count
scoreboard objectives add swiss_win_count dummy
scoreboard players operation round swiss_win_count = round bb_game
scoreboard players operation red swiss_win_count = red bb_wins
scoreboard players operation blue swiss_win_count = blue bb_wins
scoreboard players operation green swiss_win_count = green bb_wins
scoreboard players operation yellow swiss_win_count = yellow bb_wins
scoreboard players operation cyan swiss_win_count = cyan bb_wins
scoreboard players operation pink swiss_win_count = pink bb_wins
scoreboard players operation orange swiss_win_count = orange bb_wins
scoreboard players operation purple swiss_win_count = purple bb_wins

# Determine Weight
function utils:swiss/main