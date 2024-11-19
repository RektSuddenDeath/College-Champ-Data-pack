
scoreboard players add gold_rush_round rrr_game 1
scoreboard players set scb_factor rrr_game 2
scoreboard players set gold_rush_countdown rrr_game 200
# Notif
execute as @a at @s run playsound sound.generalshrinkwarn record @s
tellraw @a ["§b[§f褿§b] §6采集阶段即将开始，右键使用§e门票§6以进入采集阶段区域！"]
give @a snowball{CustomModelData:17001,display:{Name:'"§r§6门票"',Lore:['"§r§7右键点击使用，仅限当前采集阶段"']}}

# Ticket Namespace
scoreboard objectives add rrr_ticket_use used:snowball
scoreboard players set @a rrr_ticket_use 0

# Lava Bounce
scoreboard objectives add rrr_lava_immune dummy
scoreboard players set @a rrr_lava_immune 0

# Starting Time
# Select a mode
## TBD
#scoreboard players set gold_rush_mode rrr_game 1
#scoreboard players set gold_rush_mode rrr_game 2
# Try 5 Times until get a different mode
execute store result score gold_rush_mode rrr_game run random value 1..2
execute if score last_gold_rush_mode rrr_game = gold_rush_mode rrr_game run execute store result score gold_rush_mode rrr_game run random value 1..2
execute if score last_gold_rush_mode rrr_game = gold_rush_mode rrr_game run execute store result score gold_rush_mode rrr_game run random value 1..2
execute if score last_gold_rush_mode rrr_game = gold_rush_mode rrr_game run execute store result score gold_rush_mode rrr_game run random value 1..2
execute if score last_gold_rush_mode rrr_game = gold_rush_mode rrr_game run execute store result score gold_rush_mode rrr_game run random value 1..2
execute if score last_gold_rush_mode rrr_game = gold_rush_mode rrr_game run execute store result score gold_rush_mode rrr_game run random value 1..2

scoreboard players operation last_gold_rush_mode rrr_game = gold_rush_mode rrr_game

execute if score gold_rush_mode rrr_game matches 1 run function railroadrush:goldrush/collect/init
execute if score gold_rush_mode rrr_game matches 2 run function railroadrush:goldrush/defend/init