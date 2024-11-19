
# Tournament Flag
scoreboard players set RoundActive tourney_stats 1

# Teleport everyone
tp @a 5000 40 5000
gamemode spectator @a
clear @a
effect clear @a
# Place Anchors (ONCE)
#function buildmart:placeanchors

# Restore Lobbies
function buildmart:teamzone/queue

# Restore Map
function buildmart:restore/init

# Randomise Used Builds (AFTER CHUNKS ARE LOADED IN AND TEAM ZONES ARE RESTORED)
schedule function buildmart:randomise/init 5s

# Reload Workspace
schedule function buildmart:workspaceinit 3s

# Start to world guard in 10s
schedule function buildmart:guard 10s

# Play Intro
function buildmart:intro/1
schedule function buildmart:intro/2 2s
schedule function buildmart:intro/3 4s
schedule function buildmart:intro/4 6s
schedule function buildmart:intro/5 16s
schedule function buildmart:intro/6 26s
schedule function buildmart:intro/7 36s
schedule function buildmart:intro/8 46s
schedule function buildmart:intro/9 56s
schedule function buildmart:intro/10 66s
# Scoreboard Init
function buildmart:scoreboard/init
# Begin Listener
function buildmart:beginlistener