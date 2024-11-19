
scoreboard players add restore_step rrr_game 1
execute if score restore_step rrr_game matches 1 run place template railroadrush:goldrush/defend/1 89959 26 89989
execute if score restore_step rrr_game matches 2 run place template railroadrush:goldrush/defend/2 90007 26 89989
execute if score restore_step rrr_game matches 3 run place template railroadrush:goldrush/defend/3 90055 26 89989

execute if score restore_step rrr_game matches 4 run place template railroadrush:goldrush/defend/1 89959 26 89965
execute if score restore_step rrr_game matches 5 run place template railroadrush:goldrush/defend/2 90007 26 89965
execute if score restore_step rrr_game matches 6 run place template railroadrush:goldrush/defend/3 90055 26 89965

execute if score restore_step rrr_game matches 7 run place template railroadrush:goldrush/defend/1 89959 26 89941
execute if score restore_step rrr_game matches 8 run place template railroadrush:goldrush/defend/2 90007 26 89941
execute if score restore_step rrr_game matches 9 run place template railroadrush:goldrush/defend/3 90055 26 89941

execute if score restore_step rrr_game matches 10 run place template railroadrush:goldrush/defend/1 89959 26 89917
execute if score restore_step rrr_game matches 11 run place template railroadrush:goldrush/defend/2 90007 26 89917
execute if score restore_step rrr_game matches 12 run place template railroadrush:goldrush/defend/3 90055 26 89917

execute if score restore_step rrr_game matches 13 run place template railroadrush:goldrush/defend/1 89959 26 89893
execute if score restore_step rrr_game matches 14 run place template railroadrush:goldrush/defend/2 90007 26 89893
execute if score restore_step rrr_game matches 15 run place template railroadrush:goldrush/defend/3 90055 26 89893

execute if score restore_step rrr_game matches 16 run place template railroadrush:goldrush/defend/1 89959 26 89869
execute if score restore_step rrr_game matches 17 run place template railroadrush:goldrush/defend/2 90007 26 89869
execute if score restore_step rrr_game matches 18 run place template railroadrush:goldrush/defend/3 90055 26 89869

execute if score restore_step rrr_game matches 19 run place template railroadrush:goldrush/defend/1 89959 26 89845
execute if score restore_step rrr_game matches 20 run place template railroadrush:goldrush/defend/2 90007 26 89845
execute if score restore_step rrr_game matches 21 run place template railroadrush:goldrush/defend/3 90055 26 89845

execute if score restore_step rrr_game matches 22 run place template railroadrush:goldrush/defend/1 89959 26 89821
execute if score restore_step rrr_game matches 23 run place template railroadrush:goldrush/defend/2 90007 26 89821
execute if score restore_step rrr_game matches 24 run place template railroadrush:goldrush/defend/3 90055 26 89821

execute if score restore_step rrr_game matches 24 run tellraw @a[tag=admin] ["§b[§f褿§b] §6Gold Rush: Defend §barena has finished regenerating."]
execute if score restore_step rrr_game matches 24 run forceload remove 89973 90011 90099 89821

execute if score restore_step rrr_game matches 1..23 run schedule function railroadrush:goldrush/defend/structure/loop 1s