
execute as @e[type=minecart,tag=rrr_minecart,tag=final] at @s run function railroadrush:race/cart_action_single


execute unless entity @e[type=minecart,tag=rrr_minecart] run schedule function railroadrush:race/end 2t
execute unless entity @e[type=minecart,tag=rrr_minecart] run return 1
schedule function railroadrush:race/minecart_action 1t