
clear @a
effect clear @a
xp set @a 0 levels

team add spec "Spectators"
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

function railroadrush:initgame
execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set -100

gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doTileDrops true
gamerule doImmediateRespawn false
difficulty easy
gamerule keepInventory true
gamerule mobGriefing false
time set day
function master:clear_enderchest
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.attack_damage base set 1
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s generic.movement_speed base set 0.1

scoreboard players reset §c§l游戏结束

team modify red deathMessageVisibility never
team modify green deathMessageVisibility never
team modify blue deathMessageVisibility never
team modify yellow deathMessageVisibility never
team modify cyan deathMessageVisibility never
team modify orange deathMessageVisibility never
team modify purple deathMessageVisibility never
team modify pink deathMessageVisibility never

team modify blue collisionRule never
team modify green collisionRule never
team modify red collisionRule never
team modify yellow collisionRule never
team modify cyan collisionRule never
team modify orange collisionRule never
team modify purple collisionRule never
team modify pink collisionRule never

team modify blue friendlyFire false
team modify green friendlyFire false
team modify red friendlyFire false
team modify yellow friendlyFire false
team modify cyan friendlyFire false
team modify orange friendlyFire false
team modify purple friendlyFire false
team modify pink friendlyFire false

function master:latejoinspec

scoreboard players set @a mvprank 0

scoreboard players set 17 dd_games 1
scoreboard players set ActiveGame tourney_stats 17
scoreboard players set lobby tourney_stats 0
schedule clear master:timer/decisiondome/sec
schedule clear decisiondome:player

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7GAME_SELECTED§f -> PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# Team Glowing Function
scoreboard objectives add glowing_to_team dummy
scoreboard objectives add TPM dummy
scoreboard players set CancelSelfInvis TPM 1
scoreboard players set Glow TPM 1
scoreboard players set plugin_glow_control tourney_stats 1
scoreboard players set team_glow tourney_stats 1
# warning threshold
scoreboard players set warn master.timer 40
scoreboard players set highwarn master.timer 20
# Friendlyfire Mechanic
scoreboard players set friendly_fire_mod tourney_stats 0
# UI Clicking allow?
scoreboard players set disallow_ui tourney_stats 0

# Overtime
scoreboard players set OvertimeActive OvertimeMusic 0