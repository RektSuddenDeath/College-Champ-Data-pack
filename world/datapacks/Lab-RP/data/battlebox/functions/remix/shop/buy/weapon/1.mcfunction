
execute if score @s bb_shop_coins < wooden_sword bb_shop_price run tellraw @s ["§c购买失败！资金不足。"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"]

execute if score @s bb_shop_coins >= wooden_sword bb_shop_price run give @s wooden_sword{Unbreakable:1b,CanDestroy:[cobweb]} 1

execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=green] run tellraw @a[team=green] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=yellow] run tellraw @a[team=yellow] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=cyan] run tellraw @a[team=cyan] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=pink] run tellraw @a[team=pink] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=orange] run tellraw @a[team=orange] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=purple] run tellraw @a[team=purple] ["",{"selector":"@s"},"§7购买了","§e木剑"," §f(",{"score":{"name": "wooden_sword","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 

execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=red] run execute as @a[team=red] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=blue] run execute as @a[team=blue] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=green] run execute as @a[team=green] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=yellow] run execute as @a[team=yellow] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=cyan] run execute as @a[team=cyan] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=pink] run execute as @a[team=pink] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=orange] run execute as @a[team=orange] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price
execute if score @s bb_shop_coins >= wooden_sword bb_shop_price if entity @s[team=purple] run execute as @a[team=purple] run scoreboard players operation @s bb_shop_coins -= wooden_sword bb_shop_price