

scoreboard objectives add rsr_tnt_run dummy

# Sets how many ticks before the block beneath a player shall disappear.
scoreboard players set wait_time rsr_tnt_run 10

tellraw @a[tag=admin] ["§b[§r牖§b] TNT Run modifier is enabled for this game."]
function rocketspleefrush:modifiers/tnt_run_override_loop