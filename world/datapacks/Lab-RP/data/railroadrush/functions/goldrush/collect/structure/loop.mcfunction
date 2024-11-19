
scoreboard players add restore_step rrr_game 1
execute if score restore_step rrr_game matches 1 run function railroadrush:goldrush/collect/structure/lobby
execute if score restore_step rrr_game matches 2 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/1 ~ ~ ~
execute if score restore_step rrr_game matches 3 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/2 ~ ~ ~48
execute if score restore_step rrr_game matches 4 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/3 ~ ~ ~96
execute if score restore_step rrr_game matches 5 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/4 ~ ~ ~144
execute if score restore_step rrr_game matches 6 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/5 ~ ~ ~192
execute if score restore_step rrr_game matches 7 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/6 ~48 ~ ~
execute if score restore_step rrr_game matches 8 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/7 ~48 ~ ~48
execute if score restore_step rrr_game matches 9 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/8 ~48 ~ ~96
execute if score restore_step rrr_game matches 10 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/9 ~48 ~ ~144
execute if score restore_step rrr_game matches 11 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/10 ~48 ~ ~192
execute if score restore_step rrr_game matches 12 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/11 ~96 ~ ~
execute if score restore_step rrr_game matches 13 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/12 ~96 ~ ~48
execute if score restore_step rrr_game matches 14 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/13 ~96 ~ ~96
execute if score restore_step rrr_game matches 15 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/14 ~96 ~ ~144
execute if score restore_step rrr_game matches 16 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/15 ~96 ~ ~192
execute if score restore_step rrr_game matches 17 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/16 ~144 ~ ~
execute if score restore_step rrr_game matches 18 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/17 ~144 ~ ~48
execute if score restore_step rrr_game matches 19 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/18 ~144 ~ ~96
execute if score restore_step rrr_game matches 20 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/19 ~144 ~ ~144
execute if score restore_step rrr_game matches 21 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/20 ~144 ~ ~192
execute if score restore_step rrr_game matches 22 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/21 ~192 ~ ~
execute if score restore_step rrr_game matches 23 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/22 ~192 ~ ~48
execute if score restore_step rrr_game matches 24 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/23 ~192 ~ ~96
execute if score restore_step rrr_game matches 25 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/24 ~192 ~ ~144
execute if score restore_step rrr_game matches 26 positioned 84886 -2 84902 run place template railroadrush:goldrush/collect/25 ~192 ~ ~192

execute if score restore_step rrr_game matches 26 run tellraw @a[tag=admin] ["§b[§f褿§b] §6Gold Rush: Collect §barena has finished regenerating."]
execute if score restore_step rrr_game matches 26 run forceload remove 84886 84903 85121 85135
execute if score restore_step rrr_game matches 26 run return 1
schedule function railroadrush:goldrush/collect/structure/loop 1s