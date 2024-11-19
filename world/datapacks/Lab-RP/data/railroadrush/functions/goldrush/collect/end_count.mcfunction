
# Update score once more
execute as @a[tag=!in_gold_rush] run scoreboard players operation @s rrr_gold_rush_gold_collected -= @s rrr_gold_rush_gold_collected_alt
scoreboard players set @a rrr_gold_rush_gold_collected_alt 0

execute if score gold_rush_round rrr_game matches 1 run function railroadrush:goldrush/collect/score/1
execute if score gold_rush_round rrr_game matches 2 run function railroadrush:goldrush/collect/score/2
execute if score gold_rush_round rrr_game matches 3 run function railroadrush:goldrush/collect/score/3

# fx
tellraw @a ["\n§b[§f褿§b] 采集阶段已结束，本队成绩："]
execute as @a[team=red] run tellraw @a[team=red] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=blue] run tellraw @a[team=blue] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=green] run tellraw @a[team=green] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=yellow] run tellraw @a[team=yellow] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=cyan] run tellraw @a[team=cyan] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=pink] run tellraw @a[team=pink] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=orange] run tellraw @a[team=orange] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
execute as @a[team=purple] run tellraw @a[team=purple] ["  §7↪ ",{"selector":"@s"},"§7采集了",{"score":{"name": "@s","objective": "rrr_gold_rush_gold_collected"},"color": "yellow"},"§7个金子"]
tellraw @a ""