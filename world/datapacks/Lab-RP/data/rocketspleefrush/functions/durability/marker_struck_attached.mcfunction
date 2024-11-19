

$execute as @a[scores={univ_pid=$(player_attached)}] at @s run function rocketspleefrush:durability/direct_hit_victim with storage rsr:explode_adjust
#tellraw @a[tag=rsr_debug] "success"