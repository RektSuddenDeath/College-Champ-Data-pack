

# Every MINUTE, Reset all colors
execute if score second master.timer matches 30 run function buildmart:restore/colorqueue

# Flower Island is reset every 10s
execute if score second master.timer matches 1 run function buildmart:restore/flower
execute if score second master.timer matches 11 run function buildmart:restore/flower
execute if score second master.timer matches 21 run function buildmart:restore/flower
execute if score second master.timer matches 31 run function buildmart:restore/flower
execute if score second master.timer matches 41 run function buildmart:restore/flower
execute if score second master.timer matches 51 run function buildmart:restore/flower

# Ores Island is reset every minute
execute if score second master.timer matches 6 run function buildmart:restore/ores

# Logs Island is reset every minute

execute if score second master.timer matches 16 run function buildmart:restore/logs

# Stone Island is reset 5 times on 2/4/6/8/10 minutes
execute if score minute master.timer matches 10 if score second master.timer matches 30 run function buildmart:restore/stone
execute if score minute master.timer matches 8 if score second master.timer matches 30 run function buildmart:restore/stone
execute if score minute master.timer matches 6 if score second master.timer matches 30 run function buildmart:restore/stone
execute if score minute master.timer matches 4 if score second master.timer matches 30 run function buildmart:restore/stone
execute if score minute master.timer matches 2 if score second master.timer matches 30 run function buildmart:restore/stone

# Farm Island is reset twice every minute
execute if score second master.timer matches 26 run function buildmart:restore/farm
execute if score second master.timer matches 56 run function buildmart:restore/farm

# Nether Island is reset twice
execute if score minute master.timer matches 7 if score second master.timer matches 36 run function buildmart:restore/nether
execute if score minute master.timer matches 3 if score second master.timer matches 36 run function buildmart:restore/nether

# Ocean Island is reset twice
execute if score minute master.timer matches 7 if score second master.timer matches 46 run function buildmart:restore/ocean
execute if score minute master.timer matches 3 if score second master.timer matches 46 run function buildmart:restore/ocean

# Copper Island is reset twice
execute if score minute master.timer matches 6 if score second master.timer matches 56 run function buildmart:restore/copper
execute if score minute master.timer matches 2 if score second master.timer matches 56 run function buildmart:restore/copper

execute if score RoundActive tourney_stats matches 1 run schedule function buildmart:restore/loop 1t