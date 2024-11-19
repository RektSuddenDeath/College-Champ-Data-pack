
execute if score @s bb_shop_coins < modif_haste bb_shop_price unless entity @s[tag=p.game_mod_haste] run tellraw @s ["§c购买失败！资金不足。"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"]
execute if entity @s[tag=p.game_mod_haste] run tellraw @s ["§c购买失败！已经激活了此效果。"]

execute if score @s bb_shop_coins >= modif_haste bb_shop_price unless entity @s[tag=p.game_mod_haste] run tag @s add p.game_mod_haste_success

execute if entity @s[team=red,tag=p.game_mod_haste_success] run tag @a[team=red] add p.game_mod_haste
execute if entity @s[team=blue,tag=p.game_mod_haste_success] run tag @a[team=blue] add p.game_mod_haste
execute if entity @s[team=green,tag=p.game_mod_haste_success] run tag @a[team=green] add p.game_mod_haste
execute if entity @s[team=yellow,tag=p.game_mod_haste_success] run tag @a[team=yellow] add p.game_mod_haste
execute if entity @s[team=cyan,tag=p.game_mod_haste_success] run tag @a[team=cyan] add p.game_mod_haste
execute if entity @s[team=pink,tag=p.game_mod_haste_success] run tag @a[team=pink] add p.game_mod_haste
execute if entity @s[team=orange,tag=p.game_mod_haste_success] run tag @a[team=orange] add p.game_mod_haste
execute if entity @s[team=purple,tag=p.game_mod_haste_success] run tag @a[team=purple] add p.game_mod_haste

execute if entity @s[team=red,tag=p.game_mod_haste_success] run tellraw @a[team=red] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=blue,tag=p.game_mod_haste_success] run tellraw @a[team=blue] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=green,tag=p.game_mod_haste_success] run tellraw @a[team=green] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=yellow,tag=p.game_mod_haste_success] run tellraw @a[team=yellow] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=cyan,tag=p.game_mod_haste_success] run tellraw @a[team=cyan] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=pink,tag=p.game_mod_haste_success] run tellraw @a[team=pink] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=orange,tag=p.game_mod_haste_success] run tellraw @a[team=orange] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=purple,tag=p.game_mod_haste_success] run tellraw @a[team=purple] ["",{"selector":"@s"},"§7购买了","§e本队伍所处对战双方均附属急迫2"," §f(",{"score":{"name": "modif_haste","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 


execute if entity @s[team=red,tag=p.game_mod_haste_success] run execute as @a[team=red] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=blue,tag=p.game_mod_haste_success] run execute as @a[team=blue] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=green,tag=p.game_mod_haste_success] run execute as @a[team=green] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=yellow,tag=p.game_mod_haste_success] run execute as @a[team=yellow] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=cyan,tag=p.game_mod_haste_success] run execute as @a[team=cyan] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=pink,tag=p.game_mod_haste_success] run execute as @a[team=pink] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=orange,tag=p.game_mod_haste_success] run execute as @a[team=orange] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price
execute if entity @s[team=purple,tag=p.game_mod_haste_success] run execute as @a[team=purple] run scoreboard players operation @s bb_shop_coins -= modif_haste bb_shop_price

tag @s remove p.game_mod_haste_success
