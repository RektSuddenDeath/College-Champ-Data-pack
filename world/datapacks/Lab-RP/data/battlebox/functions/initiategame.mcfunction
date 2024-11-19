
schedule clear master:timer/nextround/sec

# Clears Previous Scoreboard

scoreboard objectives remove bb_kills
scoreboard objectives remove bb_teamscore
scoreboard objectives remove bb_wins
scoreboard objectives remove bb_indvscore
scoreboard objectives remove bb_death
scoreboard objectives add bb_kills playerKillCount
scoreboard objectives add bb_wins dummy
scoreboard objectives add bb_indvscore dummy
scoreboard objectives add bb_teamscore dummy
scoreboard objectives add bb_death deathCount
scoreboard objectives add bb_stats dummy "Battle Box Scorings"
scoreboard objectives add bb_roundkills dummy
scoreboard objectives add bb_gamekills dummy

# Score
scoreboard players set Kill bb_stats 18
scoreboard players set Win bb_stats 180
scoreboard players set SplitWin bb_stats 45

# Roundflag
scoreboard players set round bb_game 0

# Win Blocks requirement
execute unless score custom_winreq bb_game matches 1 run scoreboard players set winreq bb_game 9

# Reset Kills
scoreboard players set @a bb_roundkills 0
scoreboard players set @a bb_gamekills 0
# teleports to pregame

clear @a
gamemode adventure @a
tp @a[team=spec] 28 41.00 -3.5 90 0
tp @a[team=red] 28 41.00 -2.5 90 0
tp @a[team=blue] 28 41.00 -1.5 90 0
tp @a[team=green] 28 41.00 -0.5 90 0
tp @a[team=yellow] 28 41.00 0.5 90 0
tp @a[team=cyan] 28 41.00 1.5 90 0
tp @a[team=pink] 28 41.00 2.5 90 0
tp @a[team=purple] 28 41.00 3.5 90 0
tp @a[team=orange] 28 41.00 4.5 90 0

# Removes "Button Pressed advancement" throughout the game to serve for the more precise kit selection feature
function battlebox:kitselection/clearadvancement

# Setup the intended map

function battlebox:map
function battlebox:scoreboard/pregame
function utils:nodropping

forceload add 23 -6 29 6
function battlebox:defaultkit_init
function battlebox:nofire
# Each team picked kit, separated into 4 scoreboard
scoreboard objectives add bb_kit1 dummy
scoreboard objectives add bb_kit2 dummy
scoreboard objectives add bb_kit3 dummy
scoreboard objectives add bb_kit4 dummy
# Plays Intro

schedule function battlebox:intro/1 1s
schedule function battlebox:intro/2 3s
schedule function battlebox:intro/3 6s
schedule function battlebox:intro/4 14s
schedule function battlebox:intro/5 22s
schedule function battlebox:intro/6 30s
schedule function battlebox:intro/7 38s

# Begin Listener
function battlebox:beginlistener

# Prevents attacks
execute as @a run attribute @s generic.attack_damage base set -100.0

function battlebox:statusbar/init

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7GAME_SELECTED§f -> BATTLE_BOX_PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

function utils:combattag/init
scoreboard players set tagtime tourney_stats 200

execute if score remix bb_game matches 1 run function battlebox:remix/shop/init

# Match Preinit
function battlebox:matchmaking/init

# debug
gamerule reducedDebugInfo true

# Team Colors
data modify storage bb:team_color red set value "red"
data modify storage bb:team_color blue set value "blue"
data modify storage bb:team_color green set value "green"
data modify storage bb:team_color yellow set value "yellow"
data modify storage bb:team_color cyan set value "dark_aqua"
data modify storage bb:team_color pink set value "light_purple"
data modify storage bb:team_color orange set value "gold"
data modify storage bb:team_color purple set value "dark_purple"

# Bossbar init
bossbar add bb_bossbar_red ""
bossbar add bb_bossbar_blue ""
bossbar add bb_bossbar_green ""
bossbar add bb_bossbar_yellow ""
bossbar add bb_bossbar_cyan ""
bossbar add bb_bossbar_pink ""
bossbar add bb_bossbar_orange ""
bossbar add bb_bossbar_purple ""


bossbar set bb_bossbar_red color pink
bossbar set bb_bossbar_blue color pink
bossbar set bb_bossbar_green color pink
bossbar set bb_bossbar_yellow color pink
bossbar set bb_bossbar_cyan color pink
bossbar set bb_bossbar_pink color pink
bossbar set bb_bossbar_orange color pink
bossbar set bb_bossbar_purple color pink

bossbar set bb_bossbar_red players @a[team=red]
bossbar set bb_bossbar_blue players @a[team=blue]
bossbar set bb_bossbar_green players @a[team=green]
bossbar set bb_bossbar_yellow players @a[team=yellow]
bossbar set bb_bossbar_cyan players @a[team=cyan]
bossbar set bb_bossbar_pink players @a[team=pink]
bossbar set bb_bossbar_orange players @a[team=orange]
bossbar set bb_bossbar_purple players @a[team=purple]

bossbar set bb_bossbar_red visible false
bossbar set bb_bossbar_blue visible false
bossbar set bb_bossbar_green visible false
bossbar set bb_bossbar_yellow visible false
bossbar set bb_bossbar_cyan visible false
bossbar set bb_bossbar_pink visible false
bossbar set bb_bossbar_orange visible false
bossbar set bb_bossbar_purple visible false
