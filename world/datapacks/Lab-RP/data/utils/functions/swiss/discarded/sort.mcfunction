
scoreboard players set target swiss_order_sort -10000
execute as @e[type=marker,tag=swiss_sort] run scoreboard players operation target swiss_order_sort > @s swiss_weight_raw

execute as @e[type=marker,tag=swiss_sort] if score @s swiss_weight_raw = target swiss_order_sort run scoreboard players operation @s swiss_order_asc = order_asc swiss_order_sort
execute as @e[type=marker,tag=swiss_sort] if score @s swiss_weight_raw = target swiss_order_sort run scoreboard players operation @s swiss_order_dec = order_dec swiss_order_sort
execute as @e[type=marker,tag=swiss_sort] if score @s swiss_weight_raw = target swiss_order_sort run scoreboard players set @s swiss_weight_raw -10001

scoreboard players add order_asc swiss_order_sort 1
scoreboard players remove order_dec swiss_order_sort 1

execute if score order_asc swiss_order_sort > step swiss_order_sort run return 1
function utils:swiss/sort