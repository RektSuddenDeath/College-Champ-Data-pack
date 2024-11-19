# Set the dead player to spec mode
gamemode spectator @s

# Decides if there is a valid killer
execute as @s run function rocketspleefrush:kill/findkiller

# Friendly fire Judgement
execute as @s run function rocketspleefrush:kill/friendlykill

# Player Kill
execute as @s[tag=!rsr_nokiller] run function rocketspleefrush:kill/select_kill_type

# Nature Damage
execute as @s[tag=rsr_nokiller] run function rocketspleefrush:kill/nature

tag @s remove queue_kill_judge
tag @a remove rsr_killed_teammate