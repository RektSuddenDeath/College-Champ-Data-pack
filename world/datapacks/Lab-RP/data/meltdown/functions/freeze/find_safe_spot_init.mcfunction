
scoreboard objectives add meltdown_temp_has_safe_spot dummy
execute store result score @s meltdown_temp_has_safe_spot at @s align xyz positioned ~0.5 ~ ~0.5 run function meltdown:freeze/find_safe_spot

execute if score @s meltdown_temp_has_safe_spot matches 1 at @s run summon marker ~ ~ ~ {Tags:["freeze_victim_anchor"]}
execute if score @s meltdown_temp_has_safe_spot matches 1 at @s run fill ~ ~ ~ ~ ~1 ~ brown_stained_glass
execute if score @s meltdown_temp_has_safe_spot matches 1 at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"ice"},Tags:["freeze_ice_block"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,2.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}