
summon minecraft:marker 2000 100 2500 { Tags: ["SotCenter","blue"]}
summon minecraft:marker 2000 100 3000 { Tags: ["SotCenter","cyan"]}
summon minecraft:marker 2500 100 2000 { Tags: ["SotCenter","green"]}
summon minecraft:marker 2500 100 2500 { Tags: ["SotCenter","red"]}
summon minecraft:marker 2500 100 3000 { Tags: ["SotCenter","yellow"]}
summon minecraft:marker 3000 100 2000 { Tags: ["SotCenter","pink"]}
summon minecraft:marker 3000 100 2500 { Tags: ["SotCenter","orange"]}
summon minecraft:marker 3000 100 3000 { Tags: ["SotCenter","purple"]}

scoreboard players set modifiers_start_near_vaults_tp_phase SotGame 0

# TP TO RED
execute as @a[team=red,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=blue,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=green,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=yellow,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=cyan,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=pink,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=orange,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=purple,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp

scoreboard players add modifiers_start_near_vaults_tp_phase SotGame 1

# TP TO BLUE
execute as @a[team=red,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=blue,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=green,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=yellow,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=cyan,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=pink,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=orange,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=purple,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
scoreboard players add modifiers_start_near_vaults_tp_phase SotGame 1

# TP TO GREEN
execute as @a[team=red,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=blue,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=green,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=yellow,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=cyan,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=pink,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=orange,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=purple,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
scoreboard players add modifiers_start_near_vaults_tp_phase SotGame 1

# TP TO YELLOW
execute as @a[team=red,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=blue,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=green,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=yellow,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=cyan,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=pink,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=orange,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
execute as @a[team=purple,limit=1,tag=sot_start_near_vaults_flag] at @s run function sot:modifiers/start_near_vaults_single_tp
scoreboard players add modifiers_start_near_vaults_tp_phase SotGame 1


kill @e[type=marker,tag=SotCenter]