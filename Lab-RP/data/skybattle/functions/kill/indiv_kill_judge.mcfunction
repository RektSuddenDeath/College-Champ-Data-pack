# Friendly fire exclusion
execute as @s run function skybattle:kill/friendlykill

# Set the dead player to spec mode
gamemode spectator @s

# Placement
execute if score round sba_game matches 1 run scoreboard players operation @s sba_recap_r1 = players sba_game
execute if score round sba_game matches 2 run scoreboard players operation @s sba_recap_r2 = players sba_game
execute if score round sba_game matches 3 run scoreboard players operation @s sba_recap_r3 = players sba_game

# Decides if there is a valid killer
execute as @s run function skybattle:kill/findkiller

# Player Kill
execute as @s[tag=!sba_nokiller] run function skybattle:kill/killmsg

# Nature Damage
execute as @s[tag=sba_nokiller] run function skybattle:kill/nature

# Modifiers: Shockwave
execute if score modifiers_shockwave sba_game matches 1 at @s run function skybattle:modifiers/shockwave/trigger

tag @s remove queue_kill_judge