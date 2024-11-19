
execute if score gameflag rsr_game matches 0 run kill @e[type=marker,tag=tnt_run_anchor,tag=rsr_modifier]
execute if score gameflag rsr_game matches 0 run return 0

execute as @a[team=!spec,gamemode=!spectator,nbt={OnGround:1b}] at @s run summon marker ~-0.49 ~-0.8 ~-0.49 {Tags:["rsr_modifier","tnt_run_anchor"]}
execute as @a[team=!spec,gamemode=!spectator,nbt={OnGround:1b}] at @s run summon marker ~0.49 ~-0.8 ~-0.49 {Tags:["rsr_modifier","tnt_run_anchor"]}
execute as @a[team=!spec,gamemode=!spectator,nbt={OnGround:1b}] at @s run summon marker ~0.49 ~-0.8 ~0.49 {Tags:["rsr_modifier","tnt_run_anchor"]}
execute as @a[team=!spec,gamemode=!spectator,nbt={OnGround:1b}] at @s run summon marker ~-0.49 ~-0.8 ~0.49 {Tags:["rsr_modifier","tnt_run_anchor"]}

scoreboard players add @e[type=marker,tag=tnt_run_anchor,tag=rsr_modifier] rsr_tnt_run 1

execute as @e[type=marker,tag=tnt_run_anchor,tag=rsr_modifier] at @s if score @s rsr_tnt_run >= wait_time rsr_tnt_run run setblock ~ ~ ~ air
execute as @e[type=marker,tag=tnt_run_anchor,tag=rsr_modifier] at @s if score @s rsr_tnt_run >= wait_time rsr_tnt_run run kill @s


execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:modifiers/tnt_run_override_loop 1t