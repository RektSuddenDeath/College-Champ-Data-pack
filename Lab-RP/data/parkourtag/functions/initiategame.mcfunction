
schedule clear master:timer/nextround/sec

# Clears Previous Scoreboard

scoreboard objectives remove pkt_kills
scoreboard objectives remove pkt_teamscore
scoreboard objectives remove pkt_wins
scoreboard objectives remove pkt_indvscore
scoreboard objectives remove pkt_death
scoreboard objectives remove pkt_hunts
scoreboard objectives remove pkt_ender_pearl
scoreboard objectives add pkt_kills playerKillCount
scoreboard objectives add pkt_wins dummy
scoreboard objectives add pkt_indvscore dummy
scoreboard objectives add pkt_teamscore dummy
scoreboard objectives add pkt_death deathCount
scoreboard objectives add pkt_hunts dummy
scoreboard objectives add pkt_ender_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add pkt_escapes dummy

scoreboard players set @a pkt_escapes 0

scoreboard players set survive pkt_stats 2
scoreboard players set runnerwin pkt_stats 21
scoreboard players set runnerteamwin pkt_stats 21
scoreboard players set hunt pkt_stats 4
scoreboard players set allhuntbase pkt_stats 60
scoreboard players set allhuntdecay pkt_stats 8

# teleports to pregame

clear @a
gamemode adventure @a
tp @a[team=red] -2472.50 105.00 -2002.50 -270 0
tp @a[team=blue] -2472.50 105.00 -2001.50 -270 0
tp @a[team=green] -2472.50 105.00 -2000.50 -270 0
tp @a[team=yellow] -2472.50 105.00 -1999.50 -270 0
tp @a[team=cyan] -2472.50 105.00 -1998.50 -270 0
tp @a[team=orange] -2472.50 105.00 -1997.50 -270 0
tp @a[team=purple] -2472.50 105.00 -1996.50 -270 0
tp @a[team=pink] -2472.50 105.00 -1995.50 -270 0
tp @a[team=spec] -2472.50 105.00 -1994.50 -270 0
effect give @a night_vision 100000 0 true
# Setup the intended map

# function parkourtag:map
function parkourtag:scoreboard/pregame

# Plays Intro

schedule function parkourtag:intro/1 1s
schedule function parkourtag:intro/2 3s
schedule function parkourtag:intro/3 6s
schedule function parkourtag:intro/4 14s
schedule function parkourtag:intro/5 22s
schedule function parkourtag:intro/6 30s
schedule function parkourtag:intro/7 38s
schedule function parkourtag:game/1/pregame 70s
# Prevents attacks
execute as @a run attribute @s generic.attack_damage base set -100.0

#Load maps

# forceload add -1524 -1476 -1476 -1624
# execute if score map pkt_game matches 1 run function parkourtag:mapindv/1/0
# execute if score map pkt_game matches 2 run function parkourtag:mapindv/2/0
# execute if score map pkt_game matches 3 run function parkourtag:mapindv/3/0
# Max Hunts
scoreboard players set @a pkt_hunts 0
scoreboard players set maxhunts pkt_hunts 3

function utils:nodropping
function parkourtag:statusbar/init

# f3+b
gamerule reducedDebugInfo true
