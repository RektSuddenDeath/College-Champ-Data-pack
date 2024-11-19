
forceload add 84980 84980 85020 85020
scoreboard objectives add rrr_gold_rush_gold_collected mined:gold_ore
scoreboard objectives add rrr_gold_rush_gold_collected_alt mined:gold_ore
scoreboard players set @a rrr_gold_rush_gold_collected 0
scoreboard players set @a rrr_gold_rush_gold_collected_alt 0
function railroadrush:goldrush/collect/loop