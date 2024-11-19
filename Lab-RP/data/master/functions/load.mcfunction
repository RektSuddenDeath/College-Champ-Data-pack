

team add spec "Spectators"
team modify spec color gray

scoreboard objectives add standings trigger ["standings Inquiry"]

execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 红队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 黄队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 蓝队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 绿队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 粉队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 橙队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 青队 overallscore 0
execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set 紫队 overallscore 0

execute unless score scoreSavedOnReload tourney_stats matches 1 run scoreboard players set @a tourney_indv 0
#Setup Scores

# Kill boards
scoreboard objectives add redKills teamkill.red
scoreboard objectives add blueKills teamkill.blue
scoreboard objectives add greenKills teamkill.green
scoreboard objectives add yellowKills teamkill.yellow
scoreboard objectives add pinkKills teamkill.light_purple
scoreboard objectives add orangeKills teamkill.gold
scoreboard objectives add cyanKills teamkill.dark_aqua
scoreboard objectives add purpleKills teamkill.dark_purple

scoreboard objectives add killedByRed killedByTeam.red
scoreboard objectives add killedByBlue killedByTeam.blue
scoreboard objectives add killedByGreen killedByTeam.green
scoreboard objectives add killedByYellow killedByTeam.yellow
scoreboard objectives add killedByPink killedByTeam.light_purple
scoreboard objectives add killedByOrange killedByTeam.gold
scoreboard objectives add killedByCyan killedByTeam.dark_aqua
scoreboard objectives add killedByPurple killedByTeam.dark_purple

#

scoreboard objectives remove redkills
scoreboard objectives remove bluekills
scoreboard objectives remove greenkills
scoreboard objectives remove yellowkills
scoreboard objectives remove redkilled
scoreboard objectives remove bluekilled
scoreboard objectives remove greenkilled
scoreboard objectives remove yellowkilled

# Team Addition
team add pink "粉队"
team add purple "紫队"
team add orange "橙队"
team add cyan "青队"

team modify pink color light_purple
team modify purple color dark_purple
team modify orange color gold
team modify cyan color dark_aqua

team join pink 粉队
team join purple 紫队
team join orange 橙队
team join cyan 青队

team modify red displayName "红队"
team modify blue displayName "蓝队"
team modify green displayName "绿队"
team modify yellow displayName "黄队"
team modify cyan displayName "青队"
team modify pink displayName "粉队"
team modify orange displayName "橙队"
team modify purple displayName "紫队"
team modify spec displayName "旁观"

team modify red prefix "§c愺 "
team modify blue prefix "§9愺 "
team modify green prefix "§a愺 "
team modify yellow prefix "§e愺 "
team modify cyan prefix "§3愺 "
team modify pink prefix "§d愺 "
team modify orange prefix "§6愺 "
team modify purple prefix "§5愺 "
team modify spec prefix "§8愺 "

team modify spec deathMessageVisibility never
# Scoreboard
team add placeholder_r0 "r0"
team add placeholder_r1 "r1"
team add placeholder_r2 "r2"
team add placeholder_r3 "r3"
team add placeholder_r4 "r4"
team add placeholder_r5 "r5"

team add placeholder_b0 "b0"
team add placeholder_b1 "b1"
team add placeholder_b2 "b2"
team add placeholder_b3 "b3"
team add placeholder_b4 "b4"
team add placeholder_b5 "b5"

team add placeholder_g0 "g0"
team add placeholder_g1 "g1"
team add placeholder_g2 "g2"
team add placeholder_g3 "g3"
team add placeholder_g4 "g4"
team add placeholder_g5 "g5"

team add placeholder_y0 "y0"
team add placeholder_y1 "y1"
team add placeholder_y2 "y2"
team add placeholder_y3 "y3"
team add placeholder_y4 "y4"
team add placeholder_y5 "y5"

team add placeholder_cy0
team add placeholder_cy1
team add placeholder_cy2
team add placeholder_cy3
team add placeholder_cy4
team add placeholder_cy5 

team add placeholder_or0
team add placeholder_or1
team add placeholder_or2
team add placeholder_or3
team add placeholder_or4
team add placeholder_or5

team add placeholder_pu0
team add placeholder_pu1
team add placeholder_pu2
team add placeholder_pu3
team add placeholder_pu4
team add placeholder_pu5

team add placeholder_pi0
team add placeholder_pi1
team add placeholder_pi2
team add placeholder_pi3
team add placeholder_pi4
team add placeholder_pi5

team modify placeholder_cy0 displayName "cy0"
team modify placeholder_cy1 displayName "cy1"
team modify placeholder_cy2 displayName "cy2"
team modify placeholder_cy3 displayName "cy3"
team modify placeholder_cy4 displayName "cy4"
team modify placeholder_cy5 displayName "cy5"

team modify placeholder_pu0 displayName "pu0"
team modify placeholder_pu1 displayName "pu1"
team modify placeholder_pu2 displayName "pu2"
team modify placeholder_pu3 displayName "pu3"
team modify placeholder_pu4 displayName "pu4"
team modify placeholder_pu5 displayName "pu5"

team modify placeholder_pi0 displayName "pi0"
team modify placeholder_pi1 displayName "pi1"
team modify placeholder_pi2 displayName "pi2"
team modify placeholder_pi3 displayName "pi3"
team modify placeholder_pi4 displayName "pi4"
team modify placeholder_pi5 displayName "pi5"

team modify placeholder_or0 displayName "or0"
team modify placeholder_or1 displayName "or1"
team modify placeholder_or2 displayName "or2"
team modify placeholder_or3 displayName "or3"
team modify placeholder_or4 displayName "or4"
team modify placeholder_or5 displayName "or5"
# More
scoreboard objectives add GameRankTarget dummy
scoreboard objectives add personalscore trigger
scoreboard objectives add personalRank dummy

function utils:personal/request
#function utils:teamcomp/request
# Math
scoreboard players set 60 math 60
execute if score lobby tourney_stats matches 1 run scoreboard players set ActiveGame tourney_stats 0
execute if score lobby tourney_stats matches 1 run function decisiondome:player
execute if score lobby tourney_stats matches 1 run function decisiondome:scoreboard/pregame
schedule clear master:timer/decisiondome/sec
schedule clear skybattle:intro/hold

team join rank_1 鼜鼜鼜鼜1.
team join rank_2 鼜鼜鼜鼜2.
team join rank_3 鼜鼜鼜鼜3.
team join rank_4 鼜鼜鼜鼜4.
team join rank_5 鼜鼜鼜鼜5.
team join rank_6 鼜鼜鼜鼜6.
team join rank_7 鼜鼜鼜鼜7.
team join rank_8 鼜鼜鼜鼜8.

scoreboard objectives add u.launchpad.j custom:jump
scoreboard objectives add u.launchpad dummy
scoreboard players set @a u.launchpad 0

scoreboard objectives modify health displayname "§c♥"

schedule clear master:latejoinspec
# function utils:launchpad/loop

execute if score RoundActive tourney_stats matches 0 run scoreboard players set disallow_ui tourney_stats 0

# Load Init (Multiplier Manipulation Remix)
forceload add -10195 -10205 -10193 -10207