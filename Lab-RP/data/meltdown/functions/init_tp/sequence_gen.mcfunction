
tag @r[tag=!meltdown_spawn_selected,team=!spec] add randomly_chosen_md
execute if entity @a[tag=randomly_chosen_md,team=red] run tag @a[team=red] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=red] run execute as @a[team=red] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=blue] run tag @a[team=blue] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=blue] run execute as @a[team=blue] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=green] run tag @a[team=green] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=green] run execute as @a[team=green] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=yellow] run tag @a[team=yellow] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=yellow] run execute as @a[team=yellow] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=cyan] run tag @a[team=cyan] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=cyan] run execute as @a[team=cyan] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=pink] run tag @a[team=pink] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=pink] run execute as @a[team=pink] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=orange] run tag @a[team=orange] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=orange] run execute as @a[team=orange] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
execute if entity @a[tag=randomly_chosen_md,team=purple] run tag @a[team=purple] add meltdown_spawn_selected
execute if entity @a[tag=randomly_chosen_md,team=purple] run execute as @a[team=purple] run scoreboard players operation @s temp_meltdown_spawnpoint = step temp_meltdown_spawnpoint
tag @a remove randomly_chosen_md
scoreboard players add step temp_meltdown_spawnpoint 1

execute if entity @a[team=!spec,tag=!meltdown_spawn_selected] run function meltdown:init_tp/sequence_gen