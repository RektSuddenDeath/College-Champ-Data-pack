
scoreboard players set gameflag rrr_game 1
scoreboard players set RoundActive tourney_stats 1
# Time Flag
schedule clear master:timer/starting/sec
function master:timer/timeleft/12min
# fx
execute as @a at @s run playsound sound.start record @s
title @a title ""
title @a subtitle ""

# Game Mode Survival
# 此游戏结合了SK的逻辑，直接给生存模式即可
gamemode survival @a[team=!spec]

scoreboard players set @a univ_death_2 0
# Team Count
scoreboard players set teams rrr_game 0
execute if entity @a[team=red] run scoreboard players add teams rrr_game 1
execute if entity @a[team=blue] run scoreboard players add teams rrr_game 1
execute if entity @a[team=green] run scoreboard players add teams rrr_game 1
execute if entity @a[team=yellow] run scoreboard players add teams rrr_game 1
execute if entity @a[team=cyan] run scoreboard players add teams rrr_game 1
execute if entity @a[team=pink] run scoreboard players add teams rrr_game 1
execute if entity @a[team=orange] run scoreboard players add teams rrr_game 1
execute if entity @a[team=purple] run scoreboard players add teams rrr_game 1

# Last Gold Rush
scoreboard players set last_gold_rush_mode rrr_game 0
# Game Components
function railroadrush:minecart_action/power
function railroadrush:minecart_motion/keep_motion
function railroadrush:summon_dynamite/master
function railroadrush:minecart_action/rail_fixer
function railroadrush:minecart_action/charge
function railroadrush:death_msg
function railroadrush:cleardrops
function railroadrush:timing
function railroadrush:emerald
function railroadrush:call_device
function railroadrush:netherite_rail

# 计分板
scoreboard players set scb_factor rrr_game 1
scoreboard players set §6 rrr_sb 11
function railroadrush:scoreboard/refresh

# GOLD RUSH TIMEBAR
function railroadrush:timebar/init
# Var
scoreboard players set goldrush_timeleft rrr_game -1
# May drop
scoreboard players set may_drop_items tourney_stats 1

# modifier
execute if score modifiers_order_up rrr_game matches 1 run function railroadrush:modifiers/order_up/init
# Modifier Alert
execute if score modifiers_explode_on_charge rrr_game matches 1 run tellraw @a[tag=admin] [{"text": "","color": "#66CCFF"},"[§f坕§r] ",{"text": "Explode on Charge","color": "#E3E3E3"},": Minecart would explode on charge."]
execute if score modifiers_order_up rrr_game matches 1 run tellraw @a[tag=admin] [{"text": "","color": "#66CCFF"},"[§f坕§r] ",{"text": "Order Up","color": "#E3E3E3"},": When TNT minecart explodes, deliver random supply to the team. Play Block Wars Order Up music."]