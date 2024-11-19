

tellraw @s ""
tellraw @s ["§b[§r戭§b] ","§b游戏总结："]
$tellraw @s ["  §7↪ ","§7回合位次: ",{"storage":"generic","nbt":"placement[$(placement_r1)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r2)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r3)]"}]
tellraw @s ["  §7↪ ","§7共击败",{"score":{"name": "@s","objective": "sba_temp_ks"}},"§7名对手"]

tellraw @s ""