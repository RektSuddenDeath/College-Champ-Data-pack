
execute as @r[tag=in_gold_rush] run function railroadrush:goldrush/transfer_self with entity @s
execute if entity @a[tag=in_gold_rush] run function railroadrush:goldrush/transfer_queue