
scoreboard objectives add sba_borderx dummy
scoreboard objectives add sba_bordery dummy
scoreboard objectives add sba_borderz dummy
scoreboard objectives add sba_borderdist dummy
scoreboard objectives add sba_game dummy
scoreboard objectives add sba_health dummy
scoreboard objectives add sba_maxhealth dummy
scoreboard objectives add sba_losthealth dummy

execute if score map sba_game matches 1 run scoreboard players set width sba_game 70
execute if score map sba_game matches 2 run scoreboard players set width sba_game 80
execute if score map sba_game matches 3 run scoreboard players set width sba_game 100
execute if score map sba_game matches 4 run scoreboard players set width sba_game 100

execute if score map sba_game matches 1..2 run scoreboard players set height sba_game 40
execute if score map sba_game matches 3 run scoreboard players set height sba_game 58
execute if score map sba_game matches 4 run scoreboard players set height sba_game 58


execute if score map sba_game matches 1 run scoreboard players set widththreshold sba_game 6
execute if score map sba_game matches 2 run scoreboard players set widththreshold sba_game 5
execute if score map sba_game matches 3 run scoreboard players set widththreshold sba_game 6
execute if score map sba_game matches 4 run scoreboard players set widththreshold sba_game 6

execute if score map sba_game matches 1..2 run scoreboard players set heightthreshold sba_game 12
execute if score map sba_game matches 3 run scoreboard players set heightthreshold sba_game 16
execute if score map sba_game matches 4 run scoreboard players set heightthreshold sba_game 14

scoreboard players set minimumwidth sba_game 0
execute if score map sba_game matches 1..2 run scoreboard players set minimumheight sba_game 20
execute if score map sba_game matches 3 run scoreboard players set minimumheight sba_game 36
execute if score map sba_game matches 4 run scoreboard players set minimumheight sba_game 36

scoreboard players set widthactive sba_game 0
scoreboard players set heightactive sba_game 0

# Generate Center
kill @e[type=area_effect_cloud,tag=bordercenter]
execute if score map sba_game matches 1 run summon area_effect_cloud 13000 0 13000 {Duration:999999,Tags:[skybattle,bordercenter]}
execute if score map sba_game matches 2 run summon area_effect_cloud 23000 0 23000 {Duration:999999,Tags:[skybattle,bordercenter]}
execute if score map sba_game matches 3 run summon area_effect_cloud 33000 0 33000 {Duration:999999,Tags:[skybattle,bordercenter]}
execute if score map sba_game matches 4 run summon area_effect_cloud 43000 0 43000 {Duration:999999,Tags:[skybattle,bordercenter]}

# Init Width
scoreboard players set widthmove sba_game 0
kill @e[type=area_effect_cloud,tag=borderwidth]
function skybattle:border/widthinit
function skybattle:border/widthinitmove

# Init Height
kill @e[type=area_effect_cloud,tag=heightcenter]
kill @e[type=area_effect_cloud,tag=heightborder]

execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:[skybattle,heightcenter,heightborder]}
scoreboard players set heightmove sba_game 0
function skybattle:border/heightinitmove

execute if score map sba_game matches 1 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=71..]
execute if score map sba_game matches 2 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=81..]
execute if score map sba_game matches 3 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=101..]
execute if score map sba_game matches 4 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=101..]


# Setup main border
function skybattle:border/master