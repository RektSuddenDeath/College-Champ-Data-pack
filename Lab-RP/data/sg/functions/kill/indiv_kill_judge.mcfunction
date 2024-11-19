# Friendly fire exclusion
function sg:kill/friendlykill

# Set the dead player to spec mode
gamemode spectator @s

execute store result storage combat_tag temp_pid int 1 run scoreboard players get @s univ_pid
execute store result storage combat_tag temp_attacker_id int 1 run scoreboard players get @s univ_attacker
# Decides if there is a valid killer
function sg:kill/findkiller with storage combat_tag

# Player Kill
execute as @s[tag=!sg_nokiller] run function sg:kill/killmsg

# Nature Damage
execute as @s[tag=sg_nokiller] run function sg:kill/nature

tag @s remove queue_kill_judge