
scoreboard players set $anchor ar_temppos -2147483647
execute as @a[team=!spec,scores={ar_laps=1..3}] run scoreboard players operation $anchor ar_temppos > @s ar_timing

execute as @a[team=!spec,scores={ar_laps=1..3}] if score @s ar_timing = $anchor ar_temppos run scoreboard players operation @s ar_temppos = $current ar_temppos
execute as @a[team=!spec,scores={ar_laps=1..3}] if score @s ar_timing = $anchor ar_temppos run scoreboard players add $current ar_temppos 1
execute as @a[team=!spec,scores={ar_laps=1..3}] if score @s ar_timing = $anchor ar_temppos run scoreboard players set @s ar_timing -2147483648

execute if score $current ar_temppos <= $total ar_temppos run function acerace4:timing/rankcalc