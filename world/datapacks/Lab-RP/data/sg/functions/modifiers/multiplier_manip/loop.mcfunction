


execute as @a[team=!spec] run execute store result score @s sg_modifier_clear_success run clear @s green_candle
execute as @a[scores={sg_modifier_clear_success=1..},team=!spec] run function sg:modifiers/multiplier_manip/claim/005


execute as @a[team=!spec] run execute store result score @s sg_modifier_clear_success run clear @s orange_candle
execute as @a[scores={sg_modifier_clear_success=1..},team=!spec] run function sg:modifiers/multiplier_manip/claim/010


execute as @a[team=!spec] run execute store result score @s sg_modifier_clear_success run clear @s purple_candle
execute as @a[scores={sg_modifier_clear_success=1..},team=!spec] run function sg:modifiers/multiplier_manip/claim/020


execute as @a[team=!spec] run execute store result score @s sg_modifier_clear_success run clear @s blue_candle
execute as @a[scores={sg_modifier_clear_success=1..},team=!spec] run function sg:modifiers/multiplier_manip/claim/030


execute as @a[team=!spec] run execute store result score @s sg_modifier_clear_success run clear @s red_candle
execute as @a[scores={sg_modifier_clear_success=1..},team=!spec] run function sg:modifiers/multiplier_manip/claim/050

scoreboard players set @a sg_modifier_clear_success 0
execute if score gameflag sg_game matches 1 run schedule function sg:modifiers/multiplier_manip/loop 1t
execute if score gameflag sg_game matches 0 run function sg:modifiers/multiplier_manip/tally