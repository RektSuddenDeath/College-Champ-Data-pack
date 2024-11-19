
scoreboard players set red pkw2_multi 100
scoreboard players set blue pkw2_multi 100
scoreboard players set green pkw2_multi 100
scoreboard players set yellow pkw2_multi 100
scoreboard players set orange pkw2_multi 100
scoreboard players set cyan pkw2_multi 100
scoreboard players set pink pkw2_multi 100
scoreboard players set purple pkw2_multi 100
scoreboard players set 100 pkw2_multi 100

execute as @a[team=red,tag=easyComplete] run scoreboard players add red pkw2_multi 15
execute as @a[team=blue,tag=easyComplete] run scoreboard players add blue pkw2_multi 15
execute as @a[team=green,tag=easyComplete] run scoreboard players add green pkw2_multi 15
execute as @a[team=yellow,tag=easyComplete] run scoreboard players add yellow pkw2_multi 15
execute as @a[team=orange,tag=easyComplete] run scoreboard players add orange pkw2_multi 15
execute as @a[team=cyan,tag=easyComplete] run scoreboard players add cyan pkw2_multi 15
execute as @a[team=pink,tag=easyComplete] run scoreboard players add pink pkw2_multi 15
execute as @a[team=purple,tag=easyComplete] run scoreboard players add purple pkw2_multi 15

execute as @a[team=red,tag=mediumComplete] run scoreboard players add red pkw2_multi 30
execute as @a[team=blue,tag=mediumComplete] run scoreboard players add blue pkw2_multi 30
execute as @a[team=green,tag=mediumComplete] run scoreboard players add green pkw2_multi 30
execute as @a[team=yellow,tag=mediumComplete] run scoreboard players add yellow pkw2_multi 30
execute as @a[team=orange,tag=mediumComplete] run scoreboard players add orange pkw2_multi 30
execute as @a[team=cyan,tag=mediumComplete] run scoreboard players add cyan pkw2_multi 30
execute as @a[team=pink,tag=mediumComplete] run scoreboard players add pink pkw2_multi 30
execute as @a[team=purple,tag=mediumComplete] run scoreboard players add purple pkw2_multi 30

execute as @a[team=red,tag=hardComplete] run scoreboard players add red pkw2_multi 80
execute as @a[team=blue,tag=hardComplete] run scoreboard players add blue pkw2_multi 80
execute as @a[team=green,tag=hardComplete] run scoreboard players add green pkw2_multi 80
execute as @a[team=yellow,tag=hardComplete] run scoreboard players add yellow pkw2_multi 80
execute as @a[team=orange,tag=hardComplete] run scoreboard players add orange pkw2_multi 80
execute as @a[team=cyan,tag=hardComplete] run scoreboard players add cyan pkw2_multi 80
execute as @a[team=pink,tag=hardComplete] run scoreboard players add pink pkw2_multi 80
execute as @a[team=purple,tag=hardComplete] run scoreboard players add purple pkw2_multi 80

execute if score red pkw2_multi matches 101.. run function pkw2:scoreboard/update/red
execute if score blue pkw2_multi matches 101.. run function pkw2:scoreboard/update/blue
execute if score green pkw2_multi matches 101.. run function pkw2:scoreboard/update/green
execute if score yellow pkw2_multi matches 101.. run function pkw2:scoreboard/update/yellow
execute if score cyan pkw2_multi matches 101.. run function pkw2:scoreboard/update/cyan
execute if score orange pkw2_multi matches 101.. run function pkw2:scoreboard/update/orange
execute if score pink pkw2_multi matches 101.. run function pkw2:scoreboard/update/pink
execute if score purple pkw2_multi matches 101.. run function pkw2:scoreboard/update/purple

execute if score gameflag pkw2_game matches 1 run schedule function pkw2:scoreboard/update 1s