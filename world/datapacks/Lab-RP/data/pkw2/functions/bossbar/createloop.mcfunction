
tag @r[team=!spec,scores={BossbarAssign=0}] add BossbarAssign
execute if entity @p[tag=BossbarAssign] run scoreboard players add @a[scores={BossbarAssign=1..}] BossbarAssign 1
scoreboard players set @a[tag=BossbarAssign] BossbarAssign 1
tag @a remove BossbarAssign

execute if entity @p[team=!spec,scores={BossbarAssign=41..}] run tellraw @a "§c玩家超过40名，部分玩家可能出现BOSS栏不显示的问题！"
execute if entity @p[team=!spec,scores={BossbarAssign=0}] run function pkw2:bossbar/createloop