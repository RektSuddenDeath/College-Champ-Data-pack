
execute as @e[type=minecart,tag=rrr_minecart,tag=test] at @s positioned ~-5 ~5 ~ run tp @e[type=armor_stand,tag=rrr_cam,sort=nearest,limit=1] ~ ~ ~
execute as @e[type=minecart,tag=rrr_minecart,tag=final] at @s positioned ~-5 ~5 ~ run tp @e[type=armor_stand,tag=rrr_cam,sort=nearest,limit=1] ~ ~ ~

execute as @a[team=!spec,tag=cam_locked] at @s run spectate @e[type=armor_stand,limit=1,sort=nearest,tag=rrr_cam]
schedule function railroadrush:cam/loop 1t