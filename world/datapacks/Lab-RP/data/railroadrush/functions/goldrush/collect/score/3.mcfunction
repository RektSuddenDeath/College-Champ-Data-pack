
scoreboard players set red rrr_gold_rush_round_3 0
scoreboard players set blue rrr_gold_rush_round_3 0
scoreboard players set green rrr_gold_rush_round_3 0
scoreboard players set yellow rrr_gold_rush_round_3 0
scoreboard players set cyan rrr_gold_rush_round_3 0
scoreboard players set pink rrr_gold_rush_round_3 0
scoreboard players set orange rrr_gold_rush_round_3 0
scoreboard players set purple rrr_gold_rush_round_3 0

execute as @a[team=red] run scoreboard players operation red rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=blue] run scoreboard players operation blue rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=green] run scoreboard players operation green rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=yellow] run scoreboard players operation yellow rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=cyan] run scoreboard players operation cyan rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=pink] run scoreboard players operation pink rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=orange] run scoreboard players operation orange rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected
execute as @a[team=purple] run scoreboard players operation purple rrr_gold_rush_round_3 += @s rrr_gold_rush_gold_collected