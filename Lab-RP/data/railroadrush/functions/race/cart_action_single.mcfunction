


execute if entity @s[tag=team_red] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ red_terracotta
execute if entity @s[tag=team_blue] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ blue_terracotta
execute if entity @s[tag=team_green] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ green_terracotta
execute if entity @s[tag=team_yellow] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ yellow_terracotta
execute if entity @s[tag=team_cyan] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ cyan_terracotta
execute if entity @s[tag=team_pink] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ pink_terracotta
execute if entity @s[tag=team_orange] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ orange_terracotta
execute if entity @s[tag=team_purple] if block ~ ~ ~ #rails run setblock ~ ~-1 ~ purple_terracotta

execute store result score @s rrr_distance_this run data get entity @s Pos[0]
scoreboard players remove @s rrr_distance_this 80007

# 成环判定，矿车每8秒必须前进一格，否则会立刻crash.
scoreboard players add @s rrr_race_last_advance 1
execute unless score @s rrr_race_distance_max >= @s rrr_distance_this run scoreboard players set @s rrr_race_last_advance 0
execute unless score @s rrr_race_distance_max >= @s rrr_distance_this run scoreboard players operation @s rrr_race_distance_max = @s rrr_distance_this

execute if entity @s[tag=team_red] run scoreboard players operation red rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_blue] run scoreboard players operation blue rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_green] run scoreboard players operation green rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_yellow] run scoreboard players operation yellow rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_cyan] run scoreboard players operation cyan rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_pink] run scoreboard players operation pink rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_orange] run scoreboard players operation orange rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_purple] run scoreboard players operation purple rrr_distance_final = @s rrr_distance_this

execute if entity @s[tag=team_red] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.red"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_blue] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.blue"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_green] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.green"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_yellow] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.yellow"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_cyan] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.cyan"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_pink] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.pink"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_orange] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.orange"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]
execute if entity @s[tag=team_purple] positioned ~-5 ~5 ~ run title @a[distance=0..2] actionbar ["正在查看",{"translate":"team.purple"},"的表现： ",{"score":{"name": "@s","objective": "rrr_distance_this"},"bold": true,"color": "aqua"},"§b§lm"]