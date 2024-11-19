
execute if score modifiers_start_near_vaults_tp_phase SotGame matches 0 at @e[type=area_effect_cloud,tag=SotCenter,sort=nearest,limit=1] run tp @s ~174 54 ~-154 90 0
execute if score modifiers_start_near_vaults_tp_phase SotGame matches 1 at @e[type=area_effect_cloud,tag=SotCenter,sort=nearest,limit=1] run tp @s ~-139 68 ~131 180 0
execute if score modifiers_start_near_vaults_tp_phase SotGame matches 2 at @e[type=area_effect_cloud,tag=SotCenter,sort=nearest,limit=1] run tp @s ~62 86 ~15 90 0
execute if score modifiers_start_near_vaults_tp_phase SotGame matches 3 at @e[type=area_effect_cloud,tag=SotCenter,sort=nearest,limit=1] run tp @s ~-232 104 ~-101 -90 0

tag @s remove sot_start_near_vaults_flag