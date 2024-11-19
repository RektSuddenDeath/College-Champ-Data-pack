
# Load Current Chunk
#forceload add ~ ~
# if minecart has not been moving, take it down.



execute if score @s rrr_minecart_power matches 20 run data modify entity @s CustomName set value '"§a||||||||||||||||||||§8"'
execute if score @s rrr_minecart_power matches 19 run data modify entity @s CustomName set value '"§a|||||||||||||||||||§8|"'
execute if score @s rrr_minecart_power matches 18 run data modify entity @s CustomName set value '"§a||||||||||||||||||§8||"'
execute if score @s rrr_minecart_power matches 17 run data modify entity @s CustomName set value '"§a|||||||||||||||||§8|||"'
execute if score @s rrr_minecart_power matches 16 run data modify entity @s CustomName set value '"§a||||||||||||||||§8||||"'
execute if score @s rrr_minecart_power matches 15 run data modify entity @s CustomName set value '"§a|||||||||||||||§8|||||"'
execute if score @s rrr_minecart_power matches 14 run data modify entity @s CustomName set value '"§a||||||||||||||§8||||||"'
execute if score @s rrr_minecart_power matches 13 run data modify entity @s CustomName set value '"§a|||||||||||||§8|||||||"'
execute if score @s rrr_minecart_power matches 12 run data modify entity @s CustomName set value '"§a||||||||||||§8||||||||"'
execute if score @s rrr_minecart_power matches 11 run data modify entity @s CustomName set value '"§a|||||||||||§8|||||||||"'
execute if score @s rrr_minecart_power matches 10 run data modify entity @s CustomName set value '"§a||||||||||§8||||||||||"'
execute if score @s rrr_minecart_power matches 9 run data modify entity @s CustomName set value '"§6||||||||||§8||||||||||"'
execute if score @s rrr_minecart_power matches 8 run data modify entity @s CustomName set value '"§6|||||||||§8|||||||||||"'
execute if score @s rrr_minecart_power matches 7 run data modify entity @s CustomName set value '"§6||||||||§8||||||||||||"'
execute if score @s rrr_minecart_power matches 6 run data modify entity @s CustomName set value '"§6|||||||§8|||||||||||||"'
execute if score @s rrr_minecart_power matches 5 run data modify entity @s CustomName set value '"§6||||||§8||||||||||||||"'
execute if score @s rrr_minecart_power matches 4 run data modify entity @s CustomName set value '"§6|||||§8|||||||||||||||"'
execute if score @s rrr_minecart_power matches 3 run data modify entity @s CustomName set value '"§c||||§8||||||||||||||||"'
execute if score @s rrr_minecart_power matches 2 run data modify entity @s CustomName set value '"§c|||§8|||||||||||||||||"'
execute if score @s rrr_minecart_power matches 1 run data modify entity @s CustomName set value '"§c||§8||||||||||||||||||"'
execute if score @s rrr_minecart_power matches 0 run data modify entity @s CustomName set value '"§c|§8|||||||||||||||||||"'
execute if score @s rrr_minecart_power matches -1 run data modify entity @s CustomName set value '"§8||||||||||||||||||||"'

# 对于成环的矿车，标记并且设置动力全部消耗完。
execute if score @s[tag=final] rrr_race_last_advance matches 161.. run tag @s add race_in_loop
execute if score @s[tag=final] rrr_race_last_advance matches 161.. run scoreboard players set @s rrr_minecart_power -1

# 会爆炸的矿车会比竞逐时的矿车早1t爆炸，以保证玩家不做“刚好”的铁路，使得因为不同次矿车行进中速度运算结果的略微差别影响最终成绩。
execute if score @s[tag=!no_explode] rrr_minecart_power matches ..0 run function railroadrush:minecart_action/explode
execute if score @s[tag=final] rrr_minecart_power matches -1 run function railroadrush:minecart_action/crash


# 检查Railfixer能不能到达终点
execute if entity @s[tag=rail_fixer] if score @s rrr_minecart_power matches -1 run function railroadrush:minecart_action/rail_alert/get_team
execute if score @s[tag=no_explode,tag=!final] rrr_minecart_power matches -1 run kill @s