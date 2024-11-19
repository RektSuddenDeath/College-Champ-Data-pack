

tellraw @s ""
tellraw @s ["§b[§r囃§b] ","§b游戏总结："]
$tellraw @s ["  §7↪ ","§7完成位次: ",{"storage":"generic","nbt":"placement[$(placement_r1)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r2)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r3)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r4)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r5)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r6)]"}]
tellraw @s ["  §7↪ ","§7共跌出地图",{"score":{"name": "@s","objective": "tgttos_recap_deaths"}},"§7次"]
tellraw @s ["  §7↪ ","§7共攻击玩家",{"score":{"name": "@s","objective": "tgttos_recap_punches"}},"§7次"]
tellraw @s ["  §7↪ ","§7共击落玩家",{"score":{"name": "@s","objective": "tgttos_kills"}},"§7次"]
tellraw @s ""