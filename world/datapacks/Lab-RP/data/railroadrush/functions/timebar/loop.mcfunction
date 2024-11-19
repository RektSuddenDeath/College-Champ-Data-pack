


bossbar set rrr_gold_rush_timer players @a

data modify storage ui:timebar namespace set value "rrr_gold_rush_timer"
function railroadrush:timebar/macro with storage ui:timebar
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:timebar/loop 1t