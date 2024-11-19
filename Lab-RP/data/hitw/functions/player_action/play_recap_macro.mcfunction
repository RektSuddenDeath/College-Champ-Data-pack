

tellraw @s ""
tellraw @s ["§b[§r輶§b] ","§b游戏总结："]
$tellraw @s ["  §7↪ ","§7回合位次: ",{"storage":"generic","nbt":"placement[$(placement_r1)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r2)]"},"§7, ",{"storage":"generic","nbt":"placement[$(placement_r3)]"}]
tellraw @s ["  §7↪ ","§7共存活",{"score":{"name": "@s","objective": "hitw_temp_ts_m"}},"§fm",{"score":{"name": "@s","objective": "hitw_temp_ts_s"}},"§fs"]

tellraw @s ""