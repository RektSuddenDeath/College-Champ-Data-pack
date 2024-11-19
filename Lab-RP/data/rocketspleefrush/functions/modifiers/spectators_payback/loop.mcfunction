
scoreboard players remove @a[team=!spec,gamemode=spectator] rsr_spec_payback_cd 1

execute as @a[scores={rsr_spec_payback_cd=20}] at @s positioned ^ ^ ^1.0 run function rocketspleefrush:modifiers/spectators_payback/warn/loop
execute as @a[scores={rsr_spec_payback_cd=0}] at @s run function rocketspleefrush:modifiers/spectators_payback/fire/init

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:modifiers/spectators_payback/loop 1t