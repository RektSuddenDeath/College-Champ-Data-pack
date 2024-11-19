
execute if score @s bb_shop_coins < item_name bb_shop_price unless entity @s[tag=modif_name] run tellraw @s ["§c购买失败！资金不足。"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"]
execute if score @s bb_shop_coins < item_name bb_shop_price if entity @s[tag=modif_name] run tellraw @s ["§c购买失败！已经激活了此效果。"]

execute if score @s bb_shop_coins >= item_name bb_shop_price unless entity @s[tag=modif_name] run tag @s add modif_name_success

execute if entity @s[team=red,tag=modif_name_success] run tag @a[team=red] add modif_name
execute if entity @s[team=blue,tag=modif_name_success] run tag @a[team=blue] add modif_name
execute if entity @s[team=green,tag=modif_name_success] run tag @a[team=green] add modif_name
execute if entity @s[team=yellow,tag=modif_name_success] run tag @a[team=yellow] add modif_name
execute if entity @s[team=cyan,tag=modif_name_success] run tag @a[team=cyan] add modif_name
execute if entity @s[team=pink,tag=modif_name_success] run tag @a[team=pink] add modif_name
execute if entity @s[team=orange,tag=modif_name_success] run tag @a[team=orange] add modif_name
execute if entity @s[team=purple,tag=modif_name_success] run tag @a[team=purple] add modif_name

execute if entity @s[team=red,tag=modif_name_success] run tellraw @a[team=red] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=blue,tag=modif_name_success] run tellraw @a[team=blue] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=green,tag=modif_name_success] run tellraw @a[team=green] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=yellow,tag=modif_name_success] run tellraw @a[team=yellow] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=cyan,tag=modif_name_success] run tellraw @a[team=cyan] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=pink,tag=modif_name_success] run tellraw @a[team=pink] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=orange,tag=modif_name_success] run tellraw @a[team=orange] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=purple,tag=modif_name_success] run tellraw @a[team=purple] ["",{"selector":"@s"},"§7购买了","§eitem_rich_name"," §f(",{"score":{"name": "item_name","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 


execute if entity @s[team=red,tag=modif_name_success] run execute as @a[team=red] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=blue,tag=modif_name_success] run execute as @a[team=blue] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=green,tag=modif_name_success] run execute as @a[team=green] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=yellow,tag=modif_name_success] run execute as @a[team=yellow] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=cyan,tag=modif_name_success] run execute as @a[team=cyan] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=pink,tag=modif_name_success] run execute as @a[team=pink] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=orange,tag=modif_name_success] run execute as @a[team=orange] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price
execute if entity @s[team=purple,tag=modif_name_success] run execute as @a[team=purple] run scoreboard players operation @s bb_shop_coins -= item_name bb_shop_price

tag @s remove modif_name_success
