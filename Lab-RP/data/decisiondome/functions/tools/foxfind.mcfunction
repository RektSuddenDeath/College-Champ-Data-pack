summon snowball ~ ~ ~ {Tags:["init","ddtools","foxball"],Item:{tag:{CustomModelData:11000006}},Passengers:[{id:"minecraft:area_effect_cloud",Duration:999999999,Tags:["fox","init","ddtools"]}]}


data modify entity @e[type=snowball,tag=foxball,limit=1,tag=init,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=foxball,limit=1,tag=init,sort=nearest] Motion set from entity @s Motion

tag @e[type=snowball,tag=foxball,tag=init,limit=1,sort=nearest] remove init

kill @s