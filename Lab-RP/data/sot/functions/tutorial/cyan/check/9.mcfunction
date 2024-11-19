
title @a[team=cyan] actionbar ["[§e!§f] ","穿过传送门，离开教程区域。"]
execute as @a[team=cyan,tag=!sot_tutorial_complete] at @s if block ~ ~ ~ nether_portal run function sot:tutorial/cyan/transfer
execute unless entity @p[team=cyan,tag=!sot_tutorial_complete] run return 1
return 0