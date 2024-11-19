
xp set @a 0 levels

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.light_purple

team add spec "Spectators"

execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set -100

effect clear @a
clear @a
gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doTileDrops false
gamerule doImmediateRespawn true
difficulty peaceful
gamerule keepInventory true
gamerule mobGriefing false
time set day
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s generic.movement_speed base set 0.1

effect give @a invisibility 48 0 true
effect give @a night_vision 100000 0 true

function acerace2:initiategame

scoreboard players reset §6 ar_sb

kill @e[type=armor_stand]
kill @e[type=minecart]

team modify blue collisionRule never
team modify green collisionRule never
team modify red collisionRule never
team modify yellow collisionRule never
team modify cyan collisionRule never
team modify orange collisionRule never
team modify purple collisionRule never
team modify pink collisionRule never

team modify blue friendlyFire true
team modify green friendlyFire true
team modify red friendlyFire true
team modify yellow friendlyFire true
team modify cyan friendlyFire true
team modify orange friendlyFire true
team modify purple friendlyFire true
team modify pink friendlyFire true

team modify red deathMessageVisibility always
team modify green deathMessageVisibility always
team modify blue deathMessageVisibility always
team modify yellow deathMessageVisibility always
team modify cyan deathMessageVisibility always
team modify orange deathMessageVisibility always
team modify purple deathMessageVisibility always
team modify pink deathMessageVisibility always

function master:latejoinspec

scoreboard players set @a mvprank 0

scoreboard players set 7 dd_games 1
scoreboard players set ActiveGame tourney_stats 7
scoreboard players set lobby tourney_stats 0
schedule clear master:timer/decisiondome/sec
schedule clear decisiondome:player

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7GAME_SELECTED§f -> PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Team Glowing Function
scoreboard objectives add glowing_to_team dummy
scoreboard objectives add TPM dummy
scoreboard players set CancelSelfInvis TPM 1
scoreboard players set Glow TPM 0

# warning threshold
scoreboard players set warn master.timer 30
scoreboard players set highwarn master.timer 15