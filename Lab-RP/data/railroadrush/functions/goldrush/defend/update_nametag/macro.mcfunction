

$execute if score @s rrr_gold_rush_defend_nearby_mobs matches 0 run data modify entity @s CustomName set value '"§a$(power_percent)%"'
$execute if score @s rrr_gold_rush_defend_nearby_mobs matches 1.. run data modify entity @s CustomName set value '"§c§l$(power_percent)%"'