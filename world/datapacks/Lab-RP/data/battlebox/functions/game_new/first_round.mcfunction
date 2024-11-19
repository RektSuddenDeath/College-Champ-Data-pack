

# Team Count
scoreboard players set teams bb_game 0

execute if entity @a[team=red] run scoreboard players add teams bb_game 1
execute if entity @a[team=blue] run scoreboard players add teams bb_game 1
execute if entity @a[team=green] run scoreboard players add teams bb_game 1
execute if entity @a[team=yellow] run scoreboard players add teams bb_game 1
execute if entity @a[team=cyan] run scoreboard players add teams bb_game 1
execute if entity @a[team=pink] run scoreboard players add teams bb_game 1
execute if entity @a[team=orange] run scoreboard players add teams bb_game 1
execute if entity @a[team=purple] run scoreboard players add teams bb_game 1

# Match Count (do at least 1 match)
scoreboard players operation matches bb_game = teams bb_game
scoreboard players operation arenas bb_game = teams bb_game
scoreboard players operation arenas bb_game /= 2 math
scoreboard players remove matches bb_game 1

execute if score teams bb_game matches 1 run scoreboard players add matches bb_game 1
execute if score teams bb_game matches 3 run scoreboard players add matches bb_game 1
execute if score teams bb_game matches 5 run scoreboard players add matches bb_game 1
execute if score teams bb_game matches 7 run scoreboard players add matches bb_game 1
# SCB

function battlebox:scoreboard/game1

# Start next round
function battlebox:game_new/next_round

