
scoreboard players add round tgttos_game 1
scoreboard players set round_time_tick tgttos_game 0
scoreboard players set round_time_second tgttos_game 0
scoreboard players set round_time_minute tgttos_game 0

# Next Round SCB
execute if score round tgttos_game matches 1 run team modify placeholder_3 suffix "1/6"
execute if score round tgttos_game matches 2 run team modify placeholder_3 suffix "2/6"
execute if score round tgttos_game matches 3 run team modify placeholder_3 suffix "3/6"
execute if score round tgttos_game matches 4 run team modify placeholder_3 suffix "4/6"
execute if score round tgttos_game matches 5 run team modify placeholder_3 suffix "5/6"
execute if score round tgttos_game matches 6 run team modify placeholder_3 suffix "6/6"

# Next Round Init Game
execute if score round tgttos_game matches 1 run scoreboard players operation map tgttos_game = map1 tgttos_game
execute if score round tgttos_game matches 2 run scoreboard players operation map tgttos_game = map2 tgttos_game
execute if score round tgttos_game matches 3 run scoreboard players operation map tgttos_game = map3 tgttos_game
execute if score round tgttos_game matches 4 run scoreboard players operation map tgttos_game = map4 tgttos_game
execute if score round tgttos_game matches 5 run scoreboard players operation map tgttos_game = map5 tgttos_game
execute if score round tgttos_game matches 6 run scoreboard players operation map tgttos_game = map6 tgttos_game

# Teams Completed
scoreboard players set teams_completed tgttos_game 0

# Select map to initiate
execute if score map tgttos_game matches 1 run function tgttos:map/basins/initiate
execute if score map tgttos_game matches 2 run function tgttos:map/boats/initiate
execute if score map tgttos_game matches 3 run function tgttos:map/caverndrive/initiate
execute if score map tgttos_game matches 4 run function tgttos:map/cliff/initiate
execute if score map tgttos_game matches 5 run function tgttos:map/doors/initiate
execute if score map tgttos_game matches 6 run function tgttos:map/glide/initiate
execute if score map tgttos_game matches 7 run function tgttos:map/industry/initiate
execute if score map tgttos_game matches 8 run function tgttos:map/pipes/initiate
execute if score map tgttos_game matches 9 run function tgttos:map/pitfall/initiate
execute if score map tgttos_game matches 10 run function tgttos:map/racetrack/initiate
execute if score map tgttos_game matches 11 run function tgttos:map/shallowlava/initiate
execute if score map tgttos_game matches 12 run function tgttos:map/skydive/initiate
execute if score map tgttos_game matches 13 run function tgttos:map/swimtrack/initiate
execute if score map tgttos_game matches 14 run function tgttos:map/breakdown/initiate

# Feed Mode active?
execute if score feed_mode_active tgttos_game matches 1 run execute as @a[team=!spec] run loot give @s loot tgttos:seed