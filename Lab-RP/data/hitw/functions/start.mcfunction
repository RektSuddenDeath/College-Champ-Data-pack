
scoreboard players set RoundActive tourney_stats 1

execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1
function master:sfx/hitw
schedule clear hitw:beginlistener
stopsound @a voice minecraft:music.gameintro

title @a title ""
title @a subtitle ""
# Dev Mode?
execute if score devMode hitw_game matches 1 run tellraw @a ["",{"text":"Development Mode enabled. This game will not end automatically.","color": "yellow"}]
# Remove all previous game items

kill @e[type=minecraft:armor_stand,tag=north]
kill @e[type=minecraft:armor_stand,tag=west]
kill @e[type=minecraft:armor_stand,tag=south]
kill @e[type=minecraft:armor_stand,tag=east]

scoreboard players set gameflag hitw_game 1

# Remove Barrier
execute if score platform_shape hitw_game matches 1 run place template hitw:platform_shape/1/1 -5007 83 -5006
execute if score platform_shape hitw_game matches 2 run place template hitw:platform_shape/2/1 -5006 83 -5006
execute if score platform_shape hitw_game matches 3 run place template hitw:platform_shape/3/1 -5006 83 -5006
execute if score platform_shape hitw_game matches 4 run place template hitw:platform_shape/4/1 -5006 83 -5006
execute if score platform_shape hitw_game matches 5 run place template hitw:platform_shape/5/1 -5006 83 -5006
execute if score platform_shape hitw_game matches 6 run place template hitw:platform_shape/6/1 -5006 83 -5006


# Triggers first wall

scoreboard players set movementreq hitw_wall 999
function hitw:scoreboard/start
function hitw:scoreboard/refresh
function hitw:wall/init_walls
#function hitw:wall/wall_generation/next_wave
function hitw:wall/move
function hitw:fall
schedule function hitw:recap_clk 1s
# Prevents Invisible
team modify blue seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify yellow seeFriendlyInvisibles false
team modify cyan seeFriendlyInvisibles false
team modify orange seeFriendlyInvisibles false
team modify purple seeFriendlyInvisibles false
team modify pink seeFriendlyInvisibles false

# Reduces Timer overtime

schedule function hitw:adjusttime/speedincrease 30s append
schedule function hitw:adjusttime/speedincrease 60s append
schedule function hitw:adjusttime/speedincrease 90s append
schedule function hitw:adjusttime/speedincrease 120s append
schedule function hitw:adjusttime/speedincrease 150s append

schedule function hitw:adjusttime/difficulty 60s append
schedule function hitw:adjusttime/difficulty 120s append

# Invis Players
effect give @a invisibility 100000 0 true
effect give @a jump_boost 10000 1 true
execute as @a run attribute @s minecraft:generic.attack_damage base set -100

# Things regarding scorings and player detection
scoreboard players set red hitw_game 0
scoreboard players set blue hitw_game 0
scoreboard players set green hitw_game 0
scoreboard players set yellow hitw_game 0
scoreboard players set cyan hitw_game 0
scoreboard players set orange hitw_game 0
scoreboard players set purple hitw_game 0
scoreboard players set pink hitw_game 0

execute as @a[team=red,scores={health=1..}] run scoreboard players add red hitw_game 1
execute as @a[team=blue,scores={health=1..}] run scoreboard players add blue hitw_game 1
execute as @a[team=green,scores={health=1..}] run scoreboard players add green hitw_game 1
execute as @a[team=yellow,scores={health=1..}] run scoreboard players add yellow hitw_game 1
execute as @a[team=cyan,scores={health=1..}] run scoreboard players add cyan hitw_game 1
execute as @a[team=orange,scores={health=1..}] run scoreboard players add orange hitw_game 1
execute as @a[team=purple,scores={health=1..}] run scoreboard players add purple hitw_game 1
execute as @a[team=pink,scores={health=1..}] run scoreboard players add pink hitw_game 1

scoreboard players set TotalPlayers hitw_game 0

scoreboard objectives remove hitw_roundrank
scoreboard objectives add hitw_roundrank dummy
scoreboard players set @a[team=!spec] hitw_roundrank 1
execute as @a[team=!spec] run scoreboard players add TotalPlayers hitw_game 1
scoreboard players operation MaxPlayers hitw_game = TotalPlayers hitw_game

scoreboard objectives remove hitw_roundscore
scoreboard objectives add hitw_roundscore dummy
scoreboard players set @a hitw_roundscore 0

scoreboard players set shrink hitw_game 0
scoreboard players set shrink2 hitw_game 0
scoreboard players operation ShrinkPlayers1 hitw_game = TotalPlayers hitw_game
scoreboard players operation ShrinkPlayers1 hitw_game /= 3 math
scoreboard players operation ShrinkPlayers1 hitw_game *= 2 math
scoreboard players operation ShrinkPlayers2 hitw_game = TotalPlayers hitw_game
scoreboard players operation ShrinkPlayers2 hitw_game /= 3 math
function hitw:detectplayers

tag @a[team=!spec,scores={health=1..}] add hitw_alive

# Player Display
execute if score MaxPlayers hitw_game matches 1 run team modify placeholder_0 suffix "/1"
execute if score MaxPlayers hitw_game matches 2 run team modify placeholder_0 suffix "/2"
execute if score MaxPlayers hitw_game matches 3 run team modify placeholder_0 suffix "/3"
execute if score MaxPlayers hitw_game matches 4 run team modify placeholder_0 suffix "/4"
execute if score MaxPlayers hitw_game matches 5 run team modify placeholder_0 suffix "/5"
execute if score MaxPlayers hitw_game matches 6 run team modify placeholder_0 suffix "/6"
execute if score MaxPlayers hitw_game matches 7 run team modify placeholder_0 suffix "/7"
execute if score MaxPlayers hitw_game matches 8 run team modify placeholder_0 suffix "/8"
execute if score MaxPlayers hitw_game matches 9 run team modify placeholder_0 suffix "/9"
execute if score MaxPlayers hitw_game matches 10 run team modify placeholder_0 suffix "/10"
execute if score MaxPlayers hitw_game matches 11 run team modify placeholder_0 suffix "/11"
execute if score MaxPlayers hitw_game matches 12 run team modify placeholder_0 suffix "/12"
execute if score MaxPlayers hitw_game matches 13 run team modify placeholder_0 suffix "/13"
execute if score MaxPlayers hitw_game matches 14 run team modify placeholder_0 suffix "/14"
execute if score MaxPlayers hitw_game matches 15 run team modify placeholder_0 suffix "/15"
execute if score MaxPlayers hitw_game matches 16 run team modify placeholder_0 suffix "/16"
execute if score MaxPlayers hitw_game matches 17 run team modify placeholder_0 suffix "/17"
execute if score MaxPlayers hitw_game matches 18 run team modify placeholder_0 suffix "/18"
execute if score MaxPlayers hitw_game matches 19 run team modify placeholder_0 suffix "/19"
execute if score MaxPlayers hitw_game matches 20 run team modify placeholder_0 suffix "/20"
execute if score MaxPlayers hitw_game matches 21 run team modify placeholder_0 suffix "/21"
execute if score MaxPlayers hitw_game matches 22 run team modify placeholder_0 suffix "/22"
execute if score MaxPlayers hitw_game matches 23 run team modify placeholder_0 suffix "/23"
execute if score MaxPlayers hitw_game matches 24 run team modify placeholder_0 suffix "/24"
execute if score MaxPlayers hitw_game matches 25 run team modify placeholder_0 suffix "/25"
execute if score MaxPlayers hitw_game matches 26 run team modify placeholder_0 suffix "/26"
execute if score MaxPlayers hitw_game matches 27 run team modify placeholder_0 suffix "/27"
execute if score MaxPlayers hitw_game matches 28 run team modify placeholder_0 suffix "/28"
execute if score MaxPlayers hitw_game matches 29 run team modify placeholder_0 suffix "/29"
execute if score MaxPlayers hitw_game matches 30 run team modify placeholder_0 suffix "/30"
execute if score MaxPlayers hitw_game matches 31 run team modify placeholder_0 suffix "/31"
execute if score MaxPlayers hitw_game matches 32 run team modify placeholder_0 suffix "/32"

