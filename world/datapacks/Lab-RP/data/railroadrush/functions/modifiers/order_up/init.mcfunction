
scoreboard objectives add rrr_modifiers_order_up dummy
scoreboard players set music_tick_in rrr_modifiers_order_up 0
scoreboard players set music_tick_loop rrr_modifiers_order_up 0

execute as @a at @s run playsound music.bw_order_up_intro voice @s

function railroadrush:modifiers/order_up/loop