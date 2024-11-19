
# execute positioned ~ ~-10 ~-7 run damage @e[type=#railroadrush:defend_mobs,dx=30,dy=20,dz=15,sort=nearest,limit=1,tag=!has_aggro] 0.01
# execute positioned ~ ~-10 ~-7 run tag @e[type=#railroadrush:defend_mobs,dx=30,dy=20,dz=15,sort=nearest,limit=1,tag=!has_aggro] add has_aggro
# execute positioned ~ ~-10 ~-7 if entity @e[type=#railroadrush:defend_mobs,dx=30,dy=20,dz=15,tag=!has_aggro] run function railroadrush:goldrush/defend/open_next_zone/aggro