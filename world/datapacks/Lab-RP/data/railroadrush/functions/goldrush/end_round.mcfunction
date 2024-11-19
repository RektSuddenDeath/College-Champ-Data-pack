
scoreboard players set scb_factor rrr_game 1
# Clear all schedule
schedule clear railroadrush:goldrush/collect/loop
schedule clear railroadrush:goldrush/boss/loop
schedule clear railroadrush:goldrush/defend/loop

# Clear All Tickets
clear @a snowball

# Clear Defend Minecarts
kill @e[type=minecart,tag=rrr_gold_rush_defend]
kill @e[type=villager,tag=rrr_gold_rush_defend]
kill @e[type=#railroadrush:defend_mobs]
# Transfer Self
function railroadrush:goldrush/transfer_queue

# Clear Timer
scoreboard players set goldrush_timeleft rrr_game -1
# 结算成绩
execute if score gold_rush_mode rrr_game matches 1 run function railroadrush:goldrush/collect/end_count
execute if score gold_rush_mode rrr_game matches 2 run function railroadrush:goldrush/defend/end_count
execute if score gold_rush_mode rrr_game matches 3 run function railroadrush:goldrush/boss/end_count
# Regenerate Arena
execute if score gold_rush_mode rrr_game matches 1 run function railroadrush:goldrush/collect/structure/init
execute if score gold_rush_mode rrr_game matches 2 run function railroadrush:goldrush/defend/structure/init
execute if score gold_rush_mode rrr_game matches 3 run function railroadrush:goldrush/boss/structure/init

title @a actionbar ""
tag @a remove in_gold_rush

# Reset timebar
execute if score gold_rush_round rrr_game matches 1..2 run scoreboard players set time_bar_type rrr_game 1
execute if score gold_rush_round rrr_game matches 1..2 run scoreboard players set tick timebar 2600
execute if score gold_rush_round rrr_game matches 1..2 run scoreboard players set max timebar 2600

execute if score gold_rush_round rrr_game matches 3 run scoreboard players set time_bar_active tourney_stats 0
execute if score gold_rush_round rrr_game matches 3 run schedule clear railroadrush:time_bar/loop
execute if score gold_rush_round rrr_game matches 3 run bossbar set rrr_gold_rush_timer visible false
