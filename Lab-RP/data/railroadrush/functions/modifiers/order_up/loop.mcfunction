
scoreboard players add music_tick_in rrr_modifiers_order_up 1

execute if score music_tick_in rrr_modifiers_order_up matches 427 run execute as @a at @s run playsound music.bw_order_up_loop voice @s

# Loop
execute if score music_tick_in rrr_modifiers_order_up matches 428.. run scoreboard players add music_tick_loop rrr_modifiers_order_up 1

execute if score music_tick_loop rrr_modifiers_order_up matches 5548.. run execute as @a at @s run playsound music.bw_order_up_loop voice @s
execute if score music_tick_loop rrr_modifiers_order_up matches 5548.. run scoreboard players set music_tick_loop rrr_modifiers_order_up 0


execute if score gameflag rrr_game matches 1 run schedule function railroadrush:modifiers/order_up/loop 1t