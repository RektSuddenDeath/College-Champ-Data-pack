# 主语是tag=borderdmg的玩家.

#title @s actionbar ["",{"text": "\ue010","font":"font:font","color":"white"}]

# 获取最大生命值和生命值，求差再加1，求得应损失生命值
execute as @a store result score @s sba_health run data get entity @s Health 10
execute if entity @s[tag=borderdmg] if score @s sba_health matches ..10 run tag @s add suffocation
execute if entity @s[tag=borderextradmg] if score @s sba_health matches ..20 run tag @s add suffocation
tag @s add took_border_damage

execute if score second master.timer matches 0..11 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 5 in_wall
execute if score second master.timer matches 12..15 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 4 in_wall
execute if score second master.timer matches 16..22 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 3 in_wall
execute if score second master.timer matches 23..30 if score minute master.timer matches 0 run damage @s[tag=borderdmg] 2 in_wall


execute if score second master.timer matches 0..11 if score minute master.timer matches 0 run scoreboard players remove @s univ_tagtime 100
execute if score second master.timer matches 12..15 if score minute master.timer matches 0 run scoreboard players remove @s univ_tagtime 80
execute if score second master.timer matches 16..22 if score minute master.timer matches 0 run scoreboard players remove @s univ_tagtime 60
execute if score second master.timer matches 23..30 if score minute master.timer matches 0 run scoreboard players remove @s univ_tagtime 40

damage @s[tag=borderdmg,tag=borderextradmg] 2 in_wall
damage @s[tag=borderdmg] 1 in_wall
