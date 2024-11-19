
title @a[team=pink] actionbar ["[§e!§f] ","穿过传送门，离开教程区域。"]
execute as @a[team=pink,tag=!sot_tutorial_complete] at @s if block ~ ~ ~ nether_portal run function sot:tutorial/pink/transfer
execute unless entity @p[team=pink,tag=!sot_tutorial_complete] run return 1
return 0