
execute as @e[type=marker,tag=bm_buildzone] at @s unless blocks ~ ~ ~ ~6 ~ ~6 ~-11 ~ ~ all run kill @e[type=item,dx=6,dy=0,dz=6]
execute at @e[type=marker,tag=bm_buildzone] unless blocks ~ ~ ~ ~6 ~ ~6 ~-11 ~ ~ all run clone ~-5 ~ ~ ~-11 ~ ~6 ~ ~ ~ replace