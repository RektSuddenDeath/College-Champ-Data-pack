summon egg ~ ~ ~ {Tags:["voteegg","init"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:999999999,Tags:["voteaec"]}]}


data modify entity @e[type=egg,tag=voteegg,limit=1,tag=init,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=egg,tag=voteegg,limit=1,tag=init,sort=nearest] Motion set from entity @s Motion

tag @e[type=egg,tag=voteegg,tag=init,limit=1,sort=nearest] remove init

kill @s