
execute if entity @e[type=area_effect_cloud,tag=opener_gate,tag=north] run function sot:opener/gate_north
execute if entity @e[type=area_effect_cloud,tag=opener_gate,tag=west] run function sot:opener/gate_west
execute if entity @e[type=area_effect_cloud,tag=opener_vault_large,tag=north] run function sot:opener/large_vault_north
execute if entity @e[type=area_effect_cloud,tag=opener_vault_large,tag=west] run function sot:opener/large_vault_west
execute if entity @e[type=area_effect_cloud,tag=opener_vault_small,tag=north] run function sot:opener/vault_north
execute if entity @e[type=area_effect_cloud,tag=opener_vault_small,tag=west] run function sot:opener/vault_west
execute if entity @e[type=area_effect_cloud,tag=opener_rusty,tag=north] run function sot:opener/rusty_north
execute if entity @e[type=area_effect_cloud,tag=opener_rusty,tag=west] run function sot:opener/rusty_west
execute if score gameflag SotGame matches 1 run schedule function sot:opener/master 4t