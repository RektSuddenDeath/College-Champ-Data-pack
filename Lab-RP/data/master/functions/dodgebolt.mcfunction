

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

effect clear @a
clear @a
effect give @a instant_health 1 10 true
time set midnight
function master:clear_enderchest

gamerule doTileDrops false
gamerule naturalRegeneration false
gamerule fallDamage false
gamerule doImmediateRespawn false
gamerule keepInventory false
gamerule mobGriefing false

difficulty peaceful
# execute as @a run attribute @s minecraft:generic.armor base set 100
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 100
execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set -2
execute as @a run attribute @s generic.movement_speed base set 0.1
scoreboard players reset @a db_bluekill
scoreboard players reset @a db_redkill

scoreboard players set team1wins db_game 0
scoreboard players set team2wins db_game 0
scoreboard players set gameflag db_game 0

title @a times 10 40 10
execute unless score mega_mode db_game matches 1 run title @a title [{"text":"Dodgebolt","color":"yellow"}]
execute if score mega_mode db_game matches 1 run title @a title [{"text":"Megabolt","color":"yellow"}]

function dodgebolt:startup



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

execute unless score mega_mode db_game matches 1 run tag @a remove db_teamone
execute unless score mega_mode db_game matches 1 run tag @a remove db_teamtwo

execute if score TeamOne db_teams matches 1 unless score mega_mode db_game matches 1 run tag @a[team=red] add db_teamone
execute if score TeamOne db_teams matches 2 unless score mega_mode db_game matches 1 run tag @a[team=blue] add db_teamone
execute if score TeamOne db_teams matches 3 unless score mega_mode db_game matches 1 run tag @a[team=green] add db_teamone
execute if score TeamOne db_teams matches 4 unless score mega_mode db_game matches 1 run tag @a[team=yellow] add db_teamone
execute if score TeamOne db_teams matches 5 unless score mega_mode db_game matches 1 run tag @a[team=cyan] add db_teamone
execute if score TeamOne db_teams matches 6 unless score mega_mode db_game matches 1 run tag @a[team=orange] add db_teamone
execute if score TeamOne db_teams matches 7 unless score mega_mode db_game matches 1 run tag @a[team=purple] add db_teamone
execute if score TeamOne db_teams matches 8 unless score mega_mode db_game matches 1 run tag @a[team=pink] add db_teamone

execute if score TeamTwo db_teams matches 1 unless score mega_mode db_game matches 1 run tag @a[team=red] add db_teamtwo
execute if score TeamTwo db_teams matches 2 unless score mega_mode db_game matches 1 run tag @a[team=blue] add db_teamtwo
execute if score TeamTwo db_teams matches 3 unless score mega_mode db_game matches 1 run tag @a[team=green] add db_teamtwo
execute if score TeamTwo db_teams matches 4 unless score mega_mode db_game matches 1 run tag @a[team=yellow] add db_teamtwo
execute if score TeamTwo db_teams matches 5 unless score mega_mode db_game matches 1 run tag @a[team=cyan] add db_teamtwo
execute if score TeamTwo db_teams matches 6 unless score mega_mode db_game matches 1 run tag @a[team=orange] add db_teamtwo
execute if score TeamTwo db_teams matches 7 unless score mega_mode db_game matches 1 run tag @a[team=purple] add db_teamtwo
execute if score TeamTwo db_teams matches 8 unless score mega_mode db_game matches 1 run tag @a[team=pink] add db_teamtwo

schedule clear master:timer/decisiondome/sec
schedule clear decisiondome:player
scoreboard players set lobby tourney_stats 0
scoreboard players set ActiveGame tourney_stats 10

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7LOBBY§f -> FINAL_DUEL_PREGAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# Team Glowing Function
scoreboard objectives remove glowing_to_team
scoreboard objectives add TPM dummy
scoreboard players set Glow TPM 0
scoreboard players set plugin_glow_control tourney_stats 0
scoreboard players set team_glow tourney_stats 0
# Friendlyfire Mechanic
scoreboard players set friendly_fire_mod tourney_stats 1
# UI Clicking allow?
scoreboard players set disallow_ui tourney_stats 1