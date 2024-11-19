
execute as @e[type=area_effect_cloud,tag=ridingfireball,tag=to_explode,sort=random,limit=1] at @s run function rocketspleefrush:weapon/adjust_position
execute if entity @e[type=area_effect_cloud,tag=ridingfireball,tag=to_explode] run function rocketspleefrush:weapon/explode_queue