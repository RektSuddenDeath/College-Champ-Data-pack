## 动画类型：
# 0: 无特殊
# 1: 清除Struck Stacks的动画，持续9t然后切换到无特殊
# 11-16: 常态STRUCK, always
# 21-26：受击时的STRUCK, 持续2t然后切换到常态


tag @s remove rsr_bar_queue

scoreboard players add @s rsr_dura_anim_frame 1
# STRUCK AMOUNT
execute if score @s rsr_dura_anim_type matches 21..26 if score @s rsr_dura_anim_frame matches 3 run scoreboard players remove @s rsr_dura_anim_type 10
# CLEANSE ANIM
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 10 run scoreboard players set @s rsr_dura_anim_type 0

scoreboard players operation @s rsr_dura_recharge_ttl = @s rsr_dura_clips
scoreboard players operation @s rsr_dura_recharge_ttl *= 4 math
scoreboard players operation @s rsr_dura_recharge_ttl += @s rsr_dura_recharges

# BAR TYPE
execute if score @s rsr_dura_anim_type matches 0 run data modify storage rsr:temp/abar type set value "\\ua001"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 1 run data modify storage rsr:temp/abar type set value "\\ua011"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 2 run data modify storage rsr:temp/abar type set value "\\ua012"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 3 run data modify storage rsr:temp/abar type set value "\\ua013"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 4 run data modify storage rsr:temp/abar type set value "\\ua014"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 5 run data modify storage rsr:temp/abar type set value "\\ua015"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 6 run data modify storage rsr:temp/abar type set value "\\ua016"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 7 run data modify storage rsr:temp/abar type set value "\\ua017"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 8 run data modify storage rsr:temp/abar type set value "\\ua018"
execute if score @s rsr_dura_anim_type matches 1 if score @s rsr_dura_anim_frame matches 9 run data modify storage rsr:temp/abar type set value "\\ua019"
execute if score @s rsr_dura_anim_type matches 11 run data modify storage rsr:temp/abar type set value "\\ua021"
execute if score @s rsr_dura_anim_type matches 12 run data modify storage rsr:temp/abar type set value "\\ua022"
execute if score @s rsr_dura_anim_type matches 13 run data modify storage rsr:temp/abar type set value "\\ua023"
execute if score @s rsr_dura_anim_type matches 14 run data modify storage rsr:temp/abar type set value "\\ua024"
execute if score @s rsr_dura_anim_type matches 15 run data modify storage rsr:temp/abar type set value "\\ua025"
execute if score @s rsr_dura_anim_type matches 16 run data modify storage rsr:temp/abar type set value "\\ua026"
execute if score @s rsr_dura_anim_type matches 21 run data modify storage rsr:temp/abar type set value "\\ua031"
execute if score @s rsr_dura_anim_type matches 22 run data modify storage rsr:temp/abar type set value "\\ua032"
execute if score @s rsr_dura_anim_type matches 23 run data modify storage rsr:temp/abar type set value "\\ua033"
execute if score @s rsr_dura_anim_type matches 24 run data modify storage rsr:temp/abar type set value "\\ua034"
execute if score @s rsr_dura_anim_type matches 25 run data modify storage rsr:temp/abar type set value "\\ua035"
execute if score @s rsr_dura_anim_type matches 26 run data modify storage rsr:temp/abar type set value "\\ua036"
# DURA AMOUNT
scoreboard players operation @s rsr_dura_bars = @s rsr_player_dura
scoreboard players operation @s rsr_dura_bars /= dura_per_bar rsr_game
# 向上取整
scoreboard players add @s rsr_dura_bars 1
execute if score @s rsr_player_dura = max_dura rsr_game run scoreboard players remove @s rsr_dura_bars 1
execute if score @s rsr_player_dura matches ..0 run scoreboard players set @s rsr_dura_bars 0


execute if score @s rsr_dura_bars matches 0 run data modify storage rsr:temp/abar dura set value "§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"

execute if score @s rsr_dura_bars matches 1 run data modify storage rsr:temp/abar dura set value "§c▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 2 run data modify storage rsr:temp/abar dura set value "§c▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 3 run data modify storage rsr:temp/abar dura set value "§c▊▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 4 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"

execute if score @s rsr_dura_bars matches 5 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 6 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 7 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 8 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊"

execute if score @s rsr_dura_bars matches 9 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 10 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 11 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊§8▊▊▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 12 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊§8▊▊▊▊▊▊▊▊▊▊▊"

execute if score @s rsr_dura_bars matches 13 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊§8▊▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 14 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊§8▊▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 15 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊§8▊▊▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 16 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊§8▊▊▊▊▊▊▊"

execute if score @s rsr_dura_bars matches 17 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊§8▊▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 18 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊▊§8▊▊▊▊▊"
execute if score @s rsr_dura_bars matches 19 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊▊▊§8▊▊▊▊"
execute if score @s rsr_dura_bars matches 20 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊▊▊▊§8▊▊▊"

execute if score @s rsr_dura_bars matches 21 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊▊▊▊▊§8▊▊"
execute if score @s rsr_dura_bars matches 22 run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊▊▊▊▊▊§8▊"
execute if score @s rsr_dura_bars matches 23.. run data modify storage rsr:temp/abar dura set value "§c▊▊▊▊§6▊▊▊▊§a▊▊▊▊▊▊▊▊▊▊▊▊▊▊▊§8"

execute if score @s rsr_dura_recharge_ttl matches 0 run data modify storage rsr:temp/abar clip set value "\"§8▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 1 run data modify storage rsr:temp/abar clip set value "\"§6▍§8▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 2 run data modify storage rsr:temp/abar clip set value "\"§6▍▍§8▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 3 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍§8▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 4 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""

execute if score @s rsr_dura_recharge_ttl matches 5 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍§8▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 6 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍§8▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 7 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍§8▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 8 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§8▍▍▍▍\""

execute if score @s rsr_dura_recharge_ttl matches 9 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍§8▍▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 10 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍§8▍▍\""
execute if score @s rsr_dura_recharge_ttl matches 11 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍§8▍\""
execute if score @s rsr_dura_recharge_ttl matches 12 run data modify storage rsr:temp/abar clip set value "\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍▍\",{\"text\": \"8\",\"font\": \"space:default\"},\"§6▍▍▍▍\""

function rocketspleefrush:durability/abar/self_macro with storage rsr:temp/abar