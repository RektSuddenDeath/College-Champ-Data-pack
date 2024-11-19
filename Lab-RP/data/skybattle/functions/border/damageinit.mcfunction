## 存储中心坐标和玩家坐标
execute as @a[team=!spec,gamemode=survival] store result score @s sba_borderx run data get entity @s Pos[0] 100
execute as @a[team=!spec,gamemode=survival] store result score @s sba_bordery run data get entity @s Pos[1] 100
execute as @a[team=!spec,gamemode=survival] store result score @s sba_borderz run data get entity @s Pos[2] 100

execute as @e[type=area_effect_cloud,tag=bordercenter] store result score @s sba_borderx run data get entity @s Pos[0] 100
execute as @e[type=area_effect_cloud,tag=bordercenter] store result score @s sba_borderz run data get entity @s Pos[2] 100

## 计算距离的平方的10,000倍，并存储在sba_borderdist中，与边界范围比较
execute as @a[team=!spec,gamemode=survival] run scoreboard players operation @s sba_borderx -= @e[type=area_effect_cloud,tag=bordercenter] sba_borderx
execute as @a[team=!spec,gamemode=survival] run scoreboard players operation @s sba_borderz -= @e[type=area_effect_cloud,tag=bordercenter] sba_borderz

execute as @a[team=!spec,gamemode=survival] run scoreboard players operation @s sba_borderx *= @s sba_borderx
execute as @a[team=!spec,gamemode=survival] run scoreboard players operation @s sba_borderz *= @s sba_borderz

scoreboard players set @a sba_borderdist 0
scoreboard players set 10k sba_borderdist 10000
scoreboard players set 100 sba_borderdist 100
scoreboard players operation maxdist sba_borderdist = width sba_game
scoreboard players operation maxdist sba_borderdist *= maxdist sba_borderdist
scoreboard players operation maxdist sba_borderdist *= 10k sba_borderdist

execute as @a[team=!spec,gamemode=survival] run scoreboard players operation @s sba_borderdist += @s sba_borderx
execute as @a[team=!spec,gamemode=survival] run scoreboard players operation @s sba_borderdist += @s sba_borderz

## 对玩家的Y值增加1.8格，视为头顶
scoreboard players add @a[team=!spec,gamemode=survival] sba_bordery 180

## 对距离超过maxdist的或者高度超过height的，附加tag
scoreboard players operation maxheight sba_borderdist = height sba_game
scoreboard players operation maxheight sba_borderdist *= 100 sba_borderdist

execute as @a[team=!spec,gamemode=survival] if score @s sba_borderdist > maxdist sba_borderdist run tag @s add borderdmg
execute as @a[team=!spec,gamemode=survival] if score @s sba_bordery > maxheight sba_borderdist run tag @s add borderdmg

## 对于连续受到超过4次边界伤害的玩家，追加一次伤害
scoreboard players set @a[tag=!borderdmg] sba_consecdmg 0
scoreboard players add @a[tag=borderdmg] sba_consecdmg 1
tag @a[tag=borderdmg,scores={sba_consecdmg=5..}] add borderextradmg

## Apply damage and warning
title @a actionbar ""
execute if score gameflag sba_game matches 1 as @a[tag=borderdmg] run function skybattle:border/damage
# execute if score gameflag sba_game matches 1 as @a[tag=borderextradmg] run function skybattle:border/damage
schedule function skybattle:border/damage_reset 1t
## Cleanup
tag @a remove borderdmg
tag @a remove borderextradmg