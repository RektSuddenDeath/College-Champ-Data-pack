

bossbar add rrr_gold_rush_timer ""
bossbar set rrr_gold_rush_timer color pink
bossbar set rrr_gold_rush_timer players @a
bossbar set rrr_gold_rush_timer visible true

scoreboard players set time_bar_active tourney_stats 1
scoreboard players set max timebar 1200
scoreboard players set tick timebar 1200


# Type 1: Gold Rush in
# Type 2: Gold Rush end
scoreboard players set time_bar_type rrr_game 1

function master:timer/bar/tick
function railroadrush:timebar/loop
