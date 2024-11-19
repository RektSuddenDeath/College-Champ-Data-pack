
execute store result storage combat_tag temp_id int 1 run scoreboard players get @s univ_pid


execute if entity @s[team=red] run function rocketspleefrush:kill/friendly_fire_revoke/red with storage combat_tag
execute if entity @s[team=blue] run function rocketspleefrush:kill/friendly_fire_revoke/blue with storage combat_tag
execute if entity @s[team=green] run function rocketspleefrush:kill/friendly_fire_revoke/green with storage combat_tag
execute if entity @s[team=yellow] run function rocketspleefrush:kill/friendly_fire_revoke/yellow with storage combat_tag
execute if entity @s[team=cyan] run function rocketspleefrush:kill/friendly_fire_revoke/cyan with storage combat_tag
execute if entity @s[team=pink] run function rocketspleefrush:kill/friendly_fire_revoke/pink with storage combat_tag
execute if entity @s[team=orange] run function rocketspleefrush:kill/friendly_fire_revoke/orange with storage combat_tag
execute if entity @s[team=purple] run function rocketspleefrush:kill/friendly_fire_revoke/purple with storage combat_tag

# Exclude again for self elimination
execute if entity @s[tag=rsr_killed_teammate] run advancement revoke @s from utils:killed
execute if entity @s[tag=rsr_killed_teammate] run tag @s remove rsr_killed_teammate
