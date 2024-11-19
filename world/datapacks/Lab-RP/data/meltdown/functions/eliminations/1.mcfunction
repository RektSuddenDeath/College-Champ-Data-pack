
# Freeze Hit
execute as @a[scores={univ_attacker=1..,meltdown_invulnerable=0},tag=!meltdown_frozen] run tag @s add queue_freeze
function meltdown:freeze/queue_freeze

# Count Remaining Players
scoreboard players set AlivePlayers meltdown_game 0
execute as @a[tag=meltdown_alive] run scoreboard players add AlivePlayers meltdown_game 1

# Team Frozen?
execute if score red meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=red] run function meltdown:eliminations/check_valid_heater/red
execute if score blue meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=blue] run function meltdown:eliminations/check_valid_heater/blue
execute if score green meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=green] run function meltdown:eliminations/check_valid_heater/green
execute if score yellow meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=yellow] run function meltdown:eliminations/check_valid_heater/yellow
execute if score cyan meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=cyan] run function meltdown:eliminations/check_valid_heater/cyan
execute if score pink meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=pink] run function meltdown:eliminations/check_valid_heater/pink
execute if score orange meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=orange] run function meltdown:eliminations/check_valid_heater/orange
execute if score purple meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=purple] run function meltdown:eliminations/check_valid_heater/purple

execute if score red meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=red] unless entity @p[tag=elimination_check_being_heated,team=red] run execute as @a[team=red] run function meltdown:eliminations/team_frozen_notif/red
execute if score blue meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=blue] unless entity @p[tag=elimination_check_being_heated,team=blue] run execute as @a[team=blue] run function meltdown:eliminations/team_frozen_notif/blue
execute if score green meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=green] unless entity @p[tag=elimination_check_being_heated,team=green] run execute as @a[team=green] run function meltdown:eliminations/team_frozen_notif/green
execute if score yellow meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=yellow] unless entity @p[tag=elimination_check_being_heated,team=yellow] run execute as @a[team=yellow] run function meltdown:eliminations/team_frozen_notif/yellow
execute if score cyan meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=cyan] unless entity @p[tag=elimination_check_being_heated,team=cyan] run execute as @a[team=cyan] run function meltdown:eliminations/team_frozen_notif/cyan
execute if score pink meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=pink] unless entity @p[tag=elimination_check_being_heated,team=pink] run execute as @a[team=pink] run function meltdown:eliminations/team_frozen_notif/pink
execute if score orange meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=orange] unless entity @p[tag=elimination_check_being_heated,team=orange] run execute as @a[team=orange] run function meltdown:eliminations/team_frozen_notif/orange
execute if score purple meltdown_team_placement matches 0 unless entity @p[tag=!meltdown_frozen,tag=meltdown_alive,team=purple] unless entity @p[tag=elimination_check_being_heated,team=purple] run execute as @a[team=purple] run function meltdown:eliminations/team_frozen_notif/purple

tag @a remove elimination_check_being_heated

# Fall Death Delay
scoreboard players remove @a[scores={meltdown_fall_death_delay=1..}] meltdown_fall_death_delay 1

# Elimination delay
tag @a[scores={meltdown_team_frozen_delay=1}] add queue_eliminated
scoreboard players remove @a[scores={meltdown_team_frozen_delay=1..}] meltdown_team_frozen_delay 1

# Other Death Reasons
## Log Off
execute as @a[tag=meltdown_alive,scores={meltdown_login=1}] run tag @s add queue_eliminated
execute as @a[tag=meltdown_alive,scores={meltdown_login=1}] run tellraw @a ["",{"selector":"@s"},"掉线了。"]

## Crashed by a down moving door
execute as @a[tag=meltdown_alive] at @s anchored eyes if block ~ ~ ~ #meltdown:door_material run tag @s add queue_eliminated
execute as @a[tag=meltdown_alive] at @s anchored eyes if block ~ ~ ~ #meltdown:door_material run tellraw @a ["",{"selector":"@s"},"被向下移动的门压扁了！"]

## Fell into Molten Lava
execute as @a[tag=meltdown_alive] at @s anchored feet if block ~ ~-1 ~ lava run tag @s add queue_eliminated
execute as @a[tag=meltdown_alive] at @s anchored feet if block ~ ~-1 ~ lava run tellraw @a ["",{"selector":"@s"},"掉入了滚烫的熔岩中！"]

## Fall a distance while frozen
execute as @a[tag=falling_while_frozen,nbt={OnGround:1b},scores={meltdown_last_fall_distance=..999}] run tag @s remove falling_while_frozen
execute as @a[tag=falling_while_frozen,nbt={OnGround:1b},scores={meltdown_last_fall_distance=1000..}] run tag @s add queue_eliminated
execute as @a[tag=falling_while_frozen,nbt={OnGround:1b},scores={meltdown_last_fall_distance=1000..}] run tellraw @a ["冻结状态的",{"selector":"@s"},"在掉落之中摔碎了！"]

# Eliminate Players
function meltdown:eliminations/queue_eliminate

# Get Fall Distance Again
execute as @a[tag=falling_while_frozen] run execute store result score @s meltdown_last_fall_distance run data get entity @s FallDistance 1000

# Team Eliminated
execute if score red meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=red] run function meltdown:team_eliminated/red
execute if score blue meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=blue] run function meltdown:team_eliminated/blue
execute if score green meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=green] run function meltdown:team_eliminated/green
execute if score yellow meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=yellow] run function meltdown:team_eliminated/yellow
execute if score cyan meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=cyan] run function meltdown:team_eliminated/cyan
execute if score pink meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=pink] run function meltdown:team_eliminated/pink
execute if score orange meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=orange] run function meltdown:team_eliminated/orange
execute if score purple meltdown_team_placement matches -2 unless entity @p[tag=meltdown_alive,team=purple] run function meltdown:team_eliminated/purple

# End Game
execute if score RemainingTeams meltdown_team_placement matches ..1 if score preparing_end meltdown_game matches 0 unless score devMode meltdown_game matches 1 run function meltdown:prepare_end_init

# Cleanup
scoreboard players set @a univ_attacker 0
scoreboard players set @a univ_tagtime 0
scoreboard players set @a meltdown_login 0
scoreboard objectives remove meltdown_temp_has_safe_spot

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:eliminations/1 1t