

tellraw @s ""
tellraw @s ["§b[§r牖§b] ","§b游戏总结："]
$tellraw @s ["  §7↪ ","§7回合位次: ",{"storage":"generic","nbt":"placement[$(placement_r1)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r2)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r3)]"}]
tellraw @s ["  §7↪ ","§7共存活",{"score":{"name": "@s","objective": "rsr_temp_ts_m"}},"§fm",{"score":{"name": "@s","objective": "rsr_temp_ts_s"}},"§fs"]
tellraw @s ["  §7↪ ","§7共击败",{"score":{"name": "@s","objective": "rsr_temp_ks"},"color": "white"},"§7名玩家"]
tellraw @s ["  §7↪ ","§7共直击",{"score":{"name": "@s","objective": "rsr_recap_direct_hit_landed"},"color": "green"},"§7次"]
tellraw @s ["  §7↪ ","§7共被直击",{"score":{"name": "@s","objective": "rsr_recap_direct_hit_taken"},"color": "red"},"§7次"]

tellraw @s ""