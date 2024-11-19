
clear @a

# Teleports Players

spreadplayers -4002 -4002 2 3 true @a
execute as @a at @s run tp @s ~ ~ ~ 900 1
# Play Intro after 2 sec

schedule function parkourwarrior:intro/1a 2s
schedule function parkourwarrior:intro/hold 2s
schedule function parkourwarrior:intro/1b 2s
schedule function parkourwarrior:intro/2 4s
schedule function parkourwarrior:intro/3 6s
schedule function parkourwarrior:intro/4 14s
schedule function parkourwarrior:intro/5 22s
schedule function parkourwarrior:intro/6 30s
schedule function parkourwarrior:intro/7 38s
schedule function parkourwarrior:intro/8 46s
schedule function parkourwarrior:intro/9 55s
schedule function parkourwarrior:intro/10 56s
schedule function parkourwarrior:intro/11 57s
schedule function parkourwarrior:intro/12 58s
schedule function parkourwarrior:intro/13 59s

schedule function parkourwarrior:gamestart 60s
# Start up scoreboard
function parkourwarrior:scoreboard/pregame

# Void
function parkourwarrior:checkpoint/void

# Checkpoints reset
scoreboard objectives remove pkw_cp
scoreboard objectives add pkw_cp dummy "Checkpoints"
scoreboard players set @a pkw_cp 0
scoreboard objectives setdisplay list pkw_cp

# Other Configurations
scoreboard players set night pkw_game 0

