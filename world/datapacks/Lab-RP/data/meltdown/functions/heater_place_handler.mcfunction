
# If heater is broken
scoreboard objectives add temp_is_heater_attacked dummy
execute as @e[type=interaction,tag=meltdown_heater] store result score @s temp_is_heater_attacked on attacker run function meltdown:unfreeze/get_breaker
execute as @e[type=interaction,scores={temp_is_heater_attacked=1..},tag=meltdown_heater] at @s run function meltdown:unfreeze/heater_break
## Crashed by a moving Door
execute as @e[type=interaction,tag=meltdown_heater] at @s if block ~ ~ ~ netherite_block run function meltdown:unfreeze/heater_break
execute as @e[type=interaction,scores={temp_is_heater_attacked=1..},tag=meltdown_heater] run data remove entity @s attack

# Heater Expiry
execute as @e[type=interaction,tag=meltdown_heater] run scoreboard players add @s meltdown_heater_duration 1
execute as @e[type=interaction,tag=meltdown_heater,scores={meltdown_heater_duration=600}] at @s run function meltdown:unfreeze/heater_expired

# New Heater Place
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_red,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_blue,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_green,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_yellow,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_cyan,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_pink,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_orange,limit=1] at @s run function meltdown:unfreeze/heater_placement_check
execute as @e[type=interaction,tag=meltdown_heater,tag=!heater_processed,tag=heater_purple,limit=1] at @s run function meltdown:unfreeze/heater_placement_check

tag @a[scores={meltdown_heater_used=1..}] add meltdown_has_heater_placed

# Cleanup
scoreboard players set @a meltdown_heater_used 0
schedule function meltdown:heater_place_handler 1t