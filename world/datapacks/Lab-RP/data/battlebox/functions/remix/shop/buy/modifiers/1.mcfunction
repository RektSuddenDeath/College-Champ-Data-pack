
execute if score @s bb_shop_coins < modif_kill_tweak bb_shop_price unless entity @s[tag=p.score_tweak_kill] run tellraw @s ["§c购买失败！资金不足。"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"]
execute if entity @s[tag=p.score_tweak_kill] run tellraw @s ["§c购买失败！已经激活了此效果。"]

execute if score @s bb_shop_coins >= modif_kill_tweak bb_shop_price unless entity @s[tag=p.score_tweak_kill] run tag @s add p.score_tweak_kill_success

execute if entity @s[team=red,tag=p.score_tweak_kill_success] run tag @a[team=red] add p.score_tweak_kill
execute if entity @s[team=blue,tag=p.score_tweak_kill_success] run tag @a[team=blue] add p.score_tweak_kill
execute if entity @s[team=green,tag=p.score_tweak_kill_success] run tag @a[team=green] add p.score_tweak_kill
execute if entity @s[team=yellow,tag=p.score_tweak_kill_success] run tag @a[team=yellow] add p.score_tweak_kill
execute if entity @s[team=cyan,tag=p.score_tweak_kill_success] run tag @a[team=cyan] add p.score_tweak_kill
execute if entity @s[team=pink,tag=p.score_tweak_kill_success] run tag @a[team=pink] add p.score_tweak_kill
execute if entity @s[team=orange,tag=p.score_tweak_kill_success] run tag @a[team=orange] add p.score_tweak_kill
execute if entity @s[team=purple,tag=p.score_tweak_kill_success] run tag @a[team=purple] add p.score_tweak_kill

execute if entity @s[team=red,tag=p.score_tweak_kill_success] run tellraw @a[team=red] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=blue,tag=p.score_tweak_kill_success] run tellraw @a[team=blue] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=green,tag=p.score_tweak_kill_success] run tellraw @a[team=green] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=yellow,tag=p.score_tweak_kill_success] run tellraw @a[team=yellow] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=cyan,tag=p.score_tweak_kill_success] run tellraw @a[team=cyan] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=pink,tag=p.score_tweak_kill_success] run tellraw @a[team=pink] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=orange,tag=p.score_tweak_kill_success] run tellraw @a[team=orange] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 
execute if entity @s[team=purple,tag=p.score_tweak_kill_success] run tellraw @a[team=purple] ["",{"selector":"@s"},"§7购买了","§e增加击杀得分，但是死亡扣分"," §f(",{"score":{"name": "modif_kill_tweak","objective": "bb_shop_price"},"color": "gold"},"§6g§f)"] 


execute if entity @s[team=red,tag=p.score_tweak_kill_success] run execute as @a[team=red] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=blue,tag=p.score_tweak_kill_success] run execute as @a[team=blue] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=green,tag=p.score_tweak_kill_success] run execute as @a[team=green] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=yellow,tag=p.score_tweak_kill_success] run execute as @a[team=yellow] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=cyan,tag=p.score_tweak_kill_success] run execute as @a[team=cyan] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=pink,tag=p.score_tweak_kill_success] run execute as @a[team=pink] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=orange,tag=p.score_tweak_kill_success] run execute as @a[team=orange] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price
execute if entity @s[team=purple,tag=p.score_tweak_kill_success] run execute as @a[team=purple] run scoreboard players operation @s bb_shop_coins -= modif_kill_tweak bb_shop_price

tag @s remove p.score_tweak_kill_success
