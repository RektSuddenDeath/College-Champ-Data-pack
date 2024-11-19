
kill @e[type=ender_pearl]
execute as @a[team=red,scores={pkt_ender_pearl=1}] run effect give @a[team=purple,tag=hunter] glowing 3 0 true
execute as @a[team=blue,scores={pkt_ender_pearl=1}] run effect give @a[team=orange,tag=hunter] glowing 3 0 true
execute as @a[team=green,scores={pkt_ender_pearl=1}] run effect give @a[team=pink,tag=hunter] glowing 3 0 true
execute as @a[team=yellow,scores={pkt_ender_pearl=1}] run effect give @a[team=cyan,tag=hunter] glowing 3 0 true
execute as @a[team=cyan,scores={pkt_ender_pearl=1}] run effect give @a[team=yellow,tag=hunter] glowing 3 0 true
execute as @a[team=pink,scores={pkt_ender_pearl=1}] run effect give @a[team=green,tag=hunter] glowing 3 0 true
execute as @a[team=orange,scores={pkt_ender_pearl=1}] run effect give @a[team=blue,tag=hunter] glowing 3 0 true
execute as @a[team=purple,scores={pkt_ender_pearl=1}] run effect give @a[team=red,tag=hunter] glowing 3 0 true
scoreboard players set @a pkt_ender_pearl 0
execute if score gameflag pkt_game matches 1 run schedule function parkourtag:game/7/tool 1t