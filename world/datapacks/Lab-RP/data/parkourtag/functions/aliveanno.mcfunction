
tellraw @a ""
execute if entity @a[team=red,tag=runner] run tellraw @a {"text": "红队","color":"red"}
execute if entity @a[team=blue,tag=runner] run tellraw @a {"text": "蓝队","color":"blue"}
execute if entity @a[team=green,tag=runner] run tellraw @a {"text": "绿队","color":"green"}
execute if entity @a[team=yellow,tag=runner] run tellraw @a {"text": "黄队","color":"yellow"}
execute if entity @a[team=orange,tag=runner] run tellraw @a {"text": "橙队","color":"gold"}
execute if entity @a[team=purple,tag=runner] run tellraw @a {"text": "紫队","color":"dark_purple"}
execute if entity @a[team=pink,tag=runner] run tellraw @a {"text": "粉队","color":"light_purple"}
execute if entity @a[team=cyan,tag=runner] run tellraw @a {"text": "青队","color":"dark_aqua"}