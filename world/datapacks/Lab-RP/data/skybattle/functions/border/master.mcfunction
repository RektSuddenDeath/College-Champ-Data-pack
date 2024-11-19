
# THIS IS A WORK EXAMPLE
# Generate the center
# execute unless entity @e[type=area_effect_cloud,tag=bordercenter] run summon area_effect_cloud 12000 0 12000 {Duration:999999,Tags:[skybattle,bordercenter]}

# 收缩
execute if score widthactive sba_game matches 1 run scoreboard players add shrinkwidth sba_game 1
execute if score heightactive sba_game matches 1 run scoreboard players add shrinkheight sba_game 1

execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game > minimumwidth sba_game run scoreboard players remove width sba_game 1
execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game if score width sba_game matches 10 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=11..]
execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game if score width sba_game matches 20 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=21..]
execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game if score width sba_game matches 30 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=31..]
execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game if score width sba_game matches 40 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=41..]
execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game if score width sba_game matches 50 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=51..]
execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game if score width sba_game matches 60 run execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run kill @e[type=area_effect_cloud,tag=heightborder,distance=61..]

execute if score shrinkwidth sba_game >= widththreshold sba_game if score width sba_game >= minimumwidth sba_game run execute as @e[type=area_effect_cloud,tag=borderwidth] at @s run tp @s ^ ^ ^-1

execute if score width sba_game matches 20 run kill @e[type=area_effect_cloud,tag=borderwidth,tag=!force]
execute if score width sba_game matches 0 run kill @e[type=area_effect_cloud,tag=borderwidth]

execute if score shrinkwidth sba_game >= widththreshold sba_game run scoreboard players set widthcd sba_game 3
execute if score shrinkwidth sba_game >= widththreshold sba_game run scoreboard players set shrinkwidth sba_game 0

execute if score shrinkheight sba_game >= heightthreshold sba_game if score height sba_game > minimumheight sba_game run scoreboard players remove height sba_game 1
execute if score shrinkheight sba_game >= heightthreshold sba_game if score height sba_game > minimumheight sba_game run execute as @e[type=area_effect_cloud,tag=heightborder] at @s run tp @s ~ ~-1 ~
execute if score shrinkheight sba_game >= heightthreshold sba_game if score height sba_game > minimumheight sba_game run execute as @e[type=area_effect_cloud,tag=borderwidth] at @s run tp @s ~ ~-1 ~
execute if score shrinkheight sba_game >= heightthreshold sba_game run scoreboard players set heightcd sba_game 3
execute if score shrinkheight sba_game >= heightthreshold sba_game run scoreboard players set shrinkheight sba_game 0

# 宽度: 递归生成最终区域
scoreboard players add widthcd sba_game 1
scoreboard players add heightcd sba_game 1

execute if score widthcd sba_game matches 4.. run function skybattle:border/widthplay

# 高度: 生成中心

execute if score heightcd sba_game matches 4.. run function skybattle:border/heightplay
# 造成出圈警告和伤害
# 这部分被整合到了skybattle:gt和skybattle:border/damageinit里来保证时序正确


# 循环
execute if score gameflag sba_game matches 1 run schedule function skybattle:border/master 10t
