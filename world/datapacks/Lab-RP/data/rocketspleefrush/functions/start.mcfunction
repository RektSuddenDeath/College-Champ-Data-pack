
scoreboard players set RoundActive tourney_stats 1

schedule clear rocketspleefrush:nofallpregame
schedule clear rocketspleefrush:beginlistener
stopsound @a voice minecraft:music.gameintro
scoreboard players set gameflag rsr_game 1
scoreboard players set @a carrotgun 0
# System
scoreboard players set TotalPlayers rsr_game 0
execute as @a[team=!spec,scores={health=1..}] run scoreboard players add TotalPlayers rsr_game 1
tag @a[team=!spec,scores={health=1..}] add alive
gamemode spectator @a[team=!spec,scores={health=..0}]
scoreboard objectives remove rsr_roundscore
scoreboard objectives add rsr_roundscore dummy


scoreboard players set @a rsr_roundscore 0
scoreboard players set TimeElapsed rsr_game 0

scoreboard players set @a rsr_reload 0
scoreboard players set @a rsr_internal_cd 0

scoreboard players set @a rsr_dura_clips 0
scoreboard players set @a rsr_dura_recharge_tick 0
scoreboard players set @a rsr_dura_recharges 0

tag @a remove lost_elytra

scoreboard players operation dura_loss_per_struck rsr_game = struck_per_stack_1 rsr_game

scoreboard players set @a rsr_round_updraft 0
scoreboard players set @a rsr_updraft_time -1

# Dura Speed
scoreboard players operation dura_loss_per_tick rsr_game = dura_loss_1 rsr_game
# Remove lobby
function rocketspleefrush:disintegrate/spawn

# Overtime Flag
scoreboard players set overtime_flag rsr_game 0

# SFX
execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.rsr voice @s ~ ~ ~
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1 1

# Reduced debug
gamerule reducedDebugInfo true

# Give Updraft Item

scoreboard players set @a updraft 0
give @a[team=!spec] ender_pearl{display:{Name:'"§r§5抬升道具"'},CustomModelData:6006} 2

item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 

# Scoreboard
function rocketspleefrush:scoreboard/ingame
# Combat Tag Reinit
function utils:combattag/init

# Starts each map's detection

execute if score map rsr_game matches 1 run function rocketspleefrush:map/classic/master
execute if score map rsr_game matches 2 run function rocketspleefrush:map/park/master
execute if score map rsr_game matches 3 run function rocketspleefrush:map/palace/master
execute if score map rsr_game matches 4 run function rocketspleefrush:map/journey/master
execute if score map rsr_game matches 5 run function rocketspleefrush:map/temple/master
execute if score map rsr_game matches 6 run function rocketspleefrush:map/checkmate/master
execute if score map rsr_game matches 7 run function rocketspleefrush:map/skyblock/master
execute if score map rsr_game matches 8 run function rocketspleefrush:map/classic_2/master

# Arrow Floating
function rocketspleefrush:arrowfloat
function rocketspleefrush:platformsound
# Updraft
function rocketspleefrush:updraft/use

# Enable Weapons/No dura
execute if score durability rsr_game matches 0 run function rocketspleefrush:weapon/cd
execute if score durability rsr_game matches 0 run function rocketspleefrush:weapon/player

execute if score durability rsr_game matches 1 run function rocketspleefrush:weapon/cd_dura
execute if score durability rsr_game matches 1 run function rocketspleefrush:weapon/player_dura

function rocketspleefrush:weapon/tick

# Recap: Time Lived
schedule function rocketspleefrush:survive_sec 1s

# Height Warning
function rocketspleefrush:height_warn/init

# No Falling blocks
function rocketspleefrush:clear_falling_blocks

# Durab
execute if score durability rsr_game matches 1 run function rocketspleefrush:durability/init
# Disint
#function rocketspleefrush:disintegrate/master


# Visual
title @a title ""
title @a subtitle ""

# Allow Punching
execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set 0.00000001
effect give @a resistance 1000000 5 true

# Chaos Modifiers: TNT Run
execute if score modifiers_tnt_run rsr_game matches 1 run function rocketspleefrush:modifiers/tnt_run_override_init
execute if score modifiers_reduced_integrity rsr_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Reduced Integrity","color": "#E3E3E3"},"§b: Islands spawn in with 25% fewer blocks."]

# Modifier: Spectator Payback
execute if score modifiers_spectators_payback rsr_game matches 1 run function rocketspleefrush:modifiers/spectators_payback/init

# Glowing
effect give @a[team=!spec] glowing infinite 0 true
# World Border
#worldborder center -8000 -8000
#worldborder set 400
