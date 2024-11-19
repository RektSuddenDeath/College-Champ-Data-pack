
# Clear Previous 2 ticks
kill @e[type=marker,tag=rsr_player_position_record]

#tag @e[type=marker,tag=rsr_player_position_record] add passed_1_tick

# Generate a new tick, no need to record for players that are invincible.
execute as @a[team=!spec,tag=alive,scores={rsr_struck_invinci=0}] at @s run summon marker ~ ~1.55 ~ {Tags:["rsr_player_position_record"]}
execute as @e[type=marker,tag=rsr_player_position_record] at @s run execute store result entity @s data.player_attached int 1 run scoreboard players get @a[team=!spec,tag=alive,scores={rsr_struck_invinci=0},sort=nearest,limit=1] univ_pid
