
effect clear @a
clear @a

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
xp set @a 0 levels

team add spec "Spectators"
gamemode spectator @a[team=!blue,team=!red,team=!yellow,team=!green]

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

function sot:initiategame
execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set 1.0

gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doTileDrops true
gamerule doImmediateRespawn false
difficulty peaceful
gamerule keepInventory false
gamerule mobGriefing false
time set day
function master:clear_enderchest
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s generic.movement_speed base set 0.1


team modify red deathMessageVisibility hideForOtherTeams
team modify green deathMessageVisibility hideForOtherTeams
team modify blue deathMessageVisibility hideForOtherTeams
team modify yellow deathMessageVisibility hideForOtherTeams
team modify cyan deathMessageVisibility hideForOtherTeams
team modify orange deathMessageVisibility hideForOtherTeams
team modify purple deathMessageVisibility hideForOtherTeams
team modify pink deathMessageVisibility hideForOtherTeams

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

scoreboard players set @a SotNugget 0
scoreboard players set @a SotIngot 0
scoreboard players set @a SotBlock 0

scoreboard players reset §c§l游戏结束

function master:latejoinspec

scoreboard players set @a mvprank 0

scoreboard players set 3 dd_games 1
scoreboard players set ActiveGame tourney_stats 3
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
# Friendlyfire Mechanic
scoreboard players set friendly_fire_mod tourney_stats 1
# UI Clicking allow?
scoreboard players set disallow_ui tourney_stats 0

# Overtime
scoreboard players set OvertimeActive OvertimeMusic 0