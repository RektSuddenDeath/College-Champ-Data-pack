
scoreboard players set $maxScore personalcalc_t -2147483647
execute as @a[tag=personal_unranked] run scoreboard players operation $maxScore personalcalc_t > @s personal_t

execute as @a[tag=personal_unranked] if score @s personal_t = $maxScore personalcalc_t run scoreboard players operation @s personalRank = $curPos personalcalc_t
execute as @a[tag=personal_unranked] if score @s personal_t = $maxScore personalcalc_t run scoreboard players add $curPos personalcalc_t 1
execute as @a[tag=personal_unranked] if score @s personal_t = $maxScore personalcalc_t run tag @s remove personal_unranked

execute unless score $curPos personalcalc_t > $totalPlayers personalcalc_t run function utils:personal/loop