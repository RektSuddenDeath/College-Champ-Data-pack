

summon marker ~ ~ ~ {Tags:["freeze_victim_anchor"]}
execute if block ~ ~ ~ air run setblock ~ ~ ~ brown_stained_glass
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ brown_stained_glass
summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"ice"},Tags:["freeze_ice_block"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,2.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
scoreboard players set @s meltdown_fall_death_delay 0
