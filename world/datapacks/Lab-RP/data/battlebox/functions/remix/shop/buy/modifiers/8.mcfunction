
execute if score @s bb_shop_coins < modif_keepinv_stack bb_shop_price unless entity @s[scores={bb_keepinv_stacks=3..}] run tellraw @s ["§c购买失败！资金不足。"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"]
execute if entity @s[scores={bb_keepinv_stacks=3..}] run tellraw @s ["§c购买失败！已经达到此效果可叠加的最大次数！"]

execute if score @s bb_shop_coins >= modif_keepinv_stack bb_shop_price unless entity @s[scores={bb_keepinv_stacks=3..}] run tag @s add p.win_keepinv_success

execute if entity @s[team=red,tag=p.win_keepinv_success] run scoreboard players add @a[team=red] bb_keepinv_stacks 1
execute if entity @s[team=blue,tag=p.win_keepinv_success] run scoreboard players add @a[team=blue] bb_keepinv_stacks 1
execute if entity @s[team=green,tag=p.win_keepinv_success] run scoreboard players add @a[team=green] bb_keepinv_stacks 1
execute if entity @s[team=yellow,tag=p.win_keepinv_success] run scoreboard players add @a[team=yellow] bb_keepinv_stacks 1
execute if entity @s[team=cyan,tag=p.win_keepinv_success] run scoreboard players add @a[team=cyan] bb_keepinv_stacks 1
execute if entity @s[team=pink,tag=p.win_keepinv_success] run scoreboard players add @a[team=pink] bb_keepinv_stacks 1
execute if entity @s[team=orange,tag=p.win_keepinv_success] run scoreboard players add @a[team=orange] bb_keepinv_stacks 1
execute if entity @s[team=purple,tag=p.win_keepinv_success] run scoreboard players add @a[team=purple] bb_keepinv_stacks 1

execute if entity @s[team=red,tag=p.win_keepinv_success] run tellraw @a[team=red] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=blue,tag=p.win_keepinv_success] run tellraw @a[team=blue] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=green,tag=p.win_keepinv_success] run tellraw @a[team=green] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=yellow,tag=p.win_keepinv_success] run tellraw @a[team=yellow] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=cyan,tag=p.win_keepinv_success] run tellraw @a[team=cyan] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=pink,tag=p.win_keepinv_success] run tellraw @a[team=pink] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=orange,tag=p.win_keepinv_success] run tellraw @a[team=orange] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=purple,tag=p.win_keepinv_success] run tellraw @a[team=purple] ["",{"selector":"@s"},"§7购买了","§e回合获胜时，存活的队伍成员可将物品带入下一轮（1次）"," §f(",{"score":{"name": "modif_keepinv_stack","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 


execute if entity @s[team=red,tag=p.win_keepinv_success] run execute as @a[team=red] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=blue,tag=p.win_keepinv_success] run execute as @a[team=blue] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=green,tag=p.win_keepinv_success] run execute as @a[team=green] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=yellow,tag=p.win_keepinv_success] run execute as @a[team=yellow] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=cyan,tag=p.win_keepinv_success] run execute as @a[team=cyan] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=pink,tag=p.win_keepinv_success] run execute as @a[team=pink] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=orange,tag=p.win_keepinv_success] run execute as @a[team=orange] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price
execute if entity @s[team=purple,tag=p.win_keepinv_success] run execute as @a[team=purple] run scoreboard players operation @s bb_shop_coins -= modif_keepinv_stack bb_shop_price

tag @s remove p.win_keepinv_success
