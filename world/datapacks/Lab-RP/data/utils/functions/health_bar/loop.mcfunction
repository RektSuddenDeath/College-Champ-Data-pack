
# Player Tags:
# healthbar_included: 计算到队伍的当前生命值
# healthbar_excluded: 不计入队伍的总生命值

# 复位
scoreboard players set @a generic.healthbar_indv 0
# 获取生命值，乘以40k倍
execute as @a[tag=healthbar_included] run execute store result score @s generic.healthbar_indv run data get entity @s Health 40001

# 获取各队Max Healths，乘以1k倍
scoreboard objectives remove generic.healthbar_team_max
scoreboard objectives add generic.healthbar_team_max dummy

execute as @a[team=red,tag=!healthbar_excluded] run scoreboard players operation red generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=blue,tag=!healthbar_excluded] run scoreboard players operation blue generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=green,tag=!healthbar_excluded] run scoreboard players operation green generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=yellow,tag=!healthbar_excluded] run scoreboard players operation yellow generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=cyan,tag=!healthbar_excluded] run scoreboard players operation cyan generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=pink,tag=!healthbar_excluded] run scoreboard players operation pink generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=orange,tag=!healthbar_excluded] run scoreboard players operation orange generic.healthbar_team_max += max_health generic.healthbar
execute as @a[team=purple,tag=!healthbar_excluded] run scoreboard players operation purple generic.healthbar_team_max += max_health generic.healthbar

# 计算各队生命值比例，精确到2.5%, (n/40)
execute as @a[team=red,tag=healthbar_included] run scoreboard players operation red generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=blue,tag=healthbar_included] run scoreboard players operation blue generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=green,tag=healthbar_included] run scoreboard players operation green generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=yellow,tag=healthbar_included] run scoreboard players operation yellow generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=cyan,tag=healthbar_included] run scoreboard players operation cyan generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=pink,tag=healthbar_included] run scoreboard players operation pink generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=orange,tag=healthbar_included] run scoreboard players operation orange generic.healthbar_team_percent += @s generic.healthbar_indv
execute as @a[team=purple,tag=healthbar_included] run scoreboard players operation purple generic.healthbar_team_percent += @s generic.healthbar_indv

scoreboard players operation red generic.healthbar_team_percent /= red generic.healthbar_team_max
scoreboard players operation blue generic.healthbar_team_percent /= blue generic.healthbar_team_max
scoreboard players operation green generic.healthbar_team_percent /= green generic.healthbar_team_max
scoreboard players operation yellow generic.healthbar_team_percent /= yellow generic.healthbar_team_max
scoreboard players operation cyan generic.healthbar_team_percent /= cyan generic.healthbar_team_max
scoreboard players operation pink generic.healthbar_team_percent /= pink generic.healthbar_team_max
scoreboard players operation orange generic.healthbar_team_percent /= orange generic.healthbar_team_max
scoreboard players operation purple generic.healthbar_team_percent /= purple generic.healthbar_team_max


# 修正：只有血量确实为0时才会使得percent格数为0

execute if score red generic.healthbar_team_percent matches 0 if entity @a[team=red,scores={generic.healthbar_indv=1..}] run scoreboard players set red generic.healthbar_team_percent 1
execute if score blue generic.healthbar_team_percent matches 0 if entity @a[team=blue,scores={generic.healthbar_indv=1..}] run scoreboard players set blue generic.healthbar_team_percent 1
execute if score green generic.healthbar_team_percent matches 0 if entity @a[team=green,scores={generic.healthbar_indv=1..}] run scoreboard players set green generic.healthbar_team_percent 1
execute if score yellow generic.healthbar_team_percent matches 0 if entity @a[team=yellow,scores={generic.healthbar_indv=1..}] run scoreboard players set yellow generic.healthbar_team_percent 1
execute if score cyan generic.healthbar_team_percent matches 0 if entity @a[team=cyan,scores={generic.healthbar_indv=1..}] run scoreboard players set cyan generic.healthbar_team_percent 1
execute if score pink generic.healthbar_team_percent matches 0 if entity @a[team=pink,scores={generic.healthbar_indv=1..}] run scoreboard players set pink generic.healthbar_team_percent 1
execute if score orange generic.healthbar_team_percent matches 0 if entity @a[team=orange,scores={generic.healthbar_indv=1..}] run scoreboard players set orange generic.healthbar_team_percent 1
execute if score purple generic.healthbar_team_percent matches 0 if entity @a[team=purple,scores={generic.healthbar_indv=1..}] run scoreboard players set purple generic.healthbar_team_percent 1

# 把数组位置存储到这个storage里面以供命令宏使用
execute store result storage generic.health_bar_determ red int 1 run scoreboard players get red generic.healthbar_team_percent
execute store result storage generic.health_bar_determ blue int 1 run scoreboard players get blue generic.healthbar_team_percent
execute store result storage generic.health_bar_determ green int 1 run scoreboard players get green generic.healthbar_team_percent
execute store result storage generic.health_bar_determ yellow int 1 run scoreboard players get yellow generic.healthbar_team_percent
execute store result storage generic.health_bar_determ cyan int 1 run scoreboard players get cyan generic.healthbar_team_percent
execute store result storage generic.health_bar_determ pink int 1 run scoreboard players get pink generic.healthbar_team_percent
execute store result storage generic.health_bar_determ orange int 1 run scoreboard players get orange generic.healthbar_team_percent
execute store result storage generic.health_bar_determ purple int 1 run scoreboard players get purple generic.healthbar_team_percent

# 按照0-9,a-z,A-E的顺序定义各队当前的血条长度。从generic.health_bar的bar_char数组中取出。
function utils:health_bar/macro_team_length with storage generic.health_bar_determ

schedule function utils:health_bar/loop 2t