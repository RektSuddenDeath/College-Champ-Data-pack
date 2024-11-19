
execute if entity @s[team=red] run give @s red_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=blue] run give @s blue_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=green] run give @s green_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=yellow] run give @s yellow_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=cyan] run give @s cyan_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=pink] run give @s pink_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=orange] run give @s orange_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}
execute if entity @s[team=purple] run give @s purple_concrete{HideFlags:24,CanPlaceOn:["#minecraft:all_breakable_blocks"]}

tellraw @s ["§e[§r耩§e] ",{"text": "Champion Build","color": "#E3E3E3"},"§e: 你第一个完成了当前关，可以放置一个方块！"]