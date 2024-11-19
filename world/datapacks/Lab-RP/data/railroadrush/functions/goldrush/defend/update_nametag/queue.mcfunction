
execute as @e[type=minecart,tag=!nametag_updated,tag=rrr_gold_rush_defend,sort=random,limit=1] run function railroadrush:goldrush/defend/update_nametag/this
execute if entity @e[type=minecart,tag=!nametag_updated,tag=rrr_gold_rush_defend] run function railroadrush:goldrush/defend/update_nametag/queue