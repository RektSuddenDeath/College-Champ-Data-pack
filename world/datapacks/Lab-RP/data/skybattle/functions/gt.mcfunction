
# This function runs every ingame gametick to keep the game running

# Change all adventure mode player's mode to survival
gamemode survival @a[gamemode=adventure]
# Remove Bell protection if there's a player nearby
execute as @e[type=magma_cube,tag=bellbarrier] at @s run execute if entity @a[distance=0..3,team=!spec,gamemode=!spectator] run tp @s ~ ~-256 ~
# Void Function
## Kill whoever is in the void
scoreboard objectives add sba_ytemp dummy
scoreboard players set @a sba_ytemp 2147483647
execute as @a[team=!spec,gamemode=survival] store result score @s sba_ytemp run data get entity @s Pos[1] 10
tag @a[team=!spec,scores={sba_ytemp=..0},gamemode=survival] add void
kill @a[team=!spec,scores={sba_ytemp=..0},gamemode=survival]

## Prevent spectators from voiding themself for fun
execute as @a[gamemode=spectator,scores={health=1..}] store result score @s sba_ytemp run data get entity @s Pos[1] 10
execute as @e[type=area_effect_cloud,tag=bordercenter,limit=1] at @s run tp @a[gamemode=spectator,scores={sba_ytemp=..0,health=1..}] @s
execute as @a[gamemode=spectator,scores={sba_ytemp=..0,health=1..}] at @s run tp @s ~ 35 ~
## Cleanup
scoreboard objectives remove sba_ytemp

# Tag alive players who logged out, marked as death.
tag @a[team=!spec,gamemode=!spectator,scores={sba_logout=1..}] add logout
kill @a[tag=logout]

# Kill all players who are outside of the game by too far.
execute as @e[type=area_effect_cloud,tag=bordercenter,limit=1] at @s run tp @a[team=] @s
execute as @e[type=area_effect_cloud,tag=bordercenter,limit=1] at @s run tag @a[team=!spec,gamemode=!spectator,distance=0..300] add inarena
tellraw @a[gamemode=!spectator,team=!spec,tag=!inarena,team=!] ["",{"text": "You are outside of the arena by too far! weird!","color": "red"}]
kill @a[gamemode=!spectator,team=!spec,tag=!inarena,team=!]
tag @a remove inarena

# Border Damage Related
scoreboard players add bordertick sba_game 1
execute if score bordertick sba_game matches 20.. run function skybattle:border/damageinit
execute if score bordertick sba_game matches 20.. run scoreboard players set bordertick sba_game 0

# Overtime Notif 
execute if score overtime_notif_1 sba_game matches 0 if score minute master.timer matches 0 if score second master.timer <= border_inc_begin sba_game run function skybattle:overtime/notif_1
# Recap
execute as @r[scores={sba_recap_r3=1..,sba_recap_played=0},team=!spec] run function skybattle:player_action/play_recap

# Tag Creeper Items
function skybattle:modifycreeperegg

# Kill and Death item
function skybattle:kill/1

# Bell Bonus
execute as @a[scores={sba_bellring=1..}] if score bellbonus sba_game matches 0 run function skybattle:bellbonus
scoreboard players set @a sba_bellring 0

# Update scoreboard, also fetch the player count & team count
function skybattle:scoreboard/update
# Game End decide
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score round sba_game matches 1 run function skybattle:round/1/timeout
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score round sba_game matches 2 run function skybattle:round/2/timeout
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score round sba_game matches 3 run function skybattle:round/3/timeout

execute if score teams sba_game matches 1 if score round sba_game matches 1 run function skybattle:round/1/end
execute if score teams sba_game matches 1 if score round sba_game matches 2 run function skybattle:round/2/end
execute if score teams sba_game matches 1 if score round sba_game matches 3 run function skybattle:round/3/end
# Loop
execute if score gameflag sba_game matches 1 run schedule function skybattle:gt 1t