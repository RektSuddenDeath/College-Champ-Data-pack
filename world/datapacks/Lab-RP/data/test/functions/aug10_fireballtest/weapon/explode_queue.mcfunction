
execute as @e[type=area_effect_cloud,tag=ridingfireball,tag=to_explode,sort=random,limit=1] at @s run function test:aug10_fireballtest/weapon/adjust_position
execute if entity @e[type=area_effect_cloud,tag=ridingfireball,tag=to_explode] run function test:aug10_fireballtest/weapon/explode_queue