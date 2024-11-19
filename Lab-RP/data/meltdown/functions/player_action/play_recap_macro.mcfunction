

tellraw @s ""
tellraw @s ["§b[§r嚘§b] ","§b游戏总结："]
$tellraw @s ["  §7↪ ","§7回合位次: ",{"storage":"generic","nbt":"placement[$(placement_r1)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r2)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r3)]"}]
tellraw @s ["  §7↪ ","§7共冻结",{"score":{"name": "@s","objective": "meltdown_recap_shot_landed"},"color": "white"},"§7名玩家"]
tellraw @s ["  §7↪ ","§7共获取",{"score":{"name": "@s","objective": "meltdown_recap_crates_gathered"},"color": "gold"},"§7个奖励箱"]
tellraw @s ["  §7↪ ","§7共被冻结",{"score":{"name": "@s","objective": "meltdown_recap_frozen"}},"§7次，脱离冻结",{"score":{"name": "@s","objective": "meltdown_recap_thawed"}},"§7次"]

tellraw @s ""