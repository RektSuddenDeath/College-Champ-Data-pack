
# Intro
scoreboard players remove gold_rush_countdown rrr_game 1
execute if score gold_rush_countdown rrr_game matches 200 run function railroadrush:goldrush/timeannounce/10
execute if score gold_rush_countdown rrr_game matches 180 run function railroadrush:goldrush/timeannounce/9
execute if score gold_rush_countdown rrr_game matches 160 run function railroadrush:goldrush/timeannounce/8
execute if score gold_rush_countdown rrr_game matches 140 run function railroadrush:goldrush/timeannounce/7
execute if score gold_rush_countdown rrr_game matches 120 run function railroadrush:goldrush/timeannounce/6
execute if score gold_rush_countdown rrr_game matches 100 run function railroadrush:goldrush/timeannounce/5
execute if score gold_rush_countdown rrr_game matches 80 run function railroadrush:goldrush/timeannounce/4
execute if score gold_rush_countdown rrr_game matches 60 run function railroadrush:goldrush/timeannounce/3
execute if score gold_rush_countdown rrr_game matches 40 run function railroadrush:goldrush/timeannounce/2
execute if score gold_rush_countdown rrr_game matches 20 run function railroadrush:goldrush/timeannounce/1
execute if score gold_rush_countdown rrr_game matches 0 run title @a[tag=in_gold_rush] title ""
execute if score gold_rush_countdown rrr_game matches 0 run title @a[tag=in_gold_rush] subtitle ""
execute if score gold_rush_countdown rrr_game matches 0 run execute as @a[tag=in_gold_rush] at @s run playsound sound.start record @s
execute if score gold_rush_countdown rrr_game matches 0 run function railroadrush:goldrush/defend/start

execute if score gold_rush_countdown rrr_game matches -1540 run execute as @a[tag=in_gold_rush] at @s run playsound sound.countdown record @s
execute if score gold_rush_countdown rrr_game matches -1560 run execute as @a[tag=in_gold_rush] at @s run playsound sound.countdown record @s
execute if score gold_rush_countdown rrr_game matches -1580 run execute as @a[tag=in_gold_rush] at @s run playsound sound.countdown record @s

# Join/Leave
execute as @a[scores={rrr_ticket_use=1..},tag=in_gold_rush] run function railroadrush:goldrush/defend/exit

execute as @a[scores={rrr_ticket_use=1..},tag=!in_gold_rush] run function railroadrush:goldrush/defend/transfer_self
scoreboard players set @a rrr_ticket_use 0

# Minecart Action
function railroadrush:goldrush/defend/minecart_action
# Count Score

execute if score gold_rush_round rrr_game matches 1 run function railroadrush:goldrush/defend/score/1
execute if score gold_rush_round rrr_game matches 2 run function railroadrush:goldrush/defend/score/2
execute if score gold_rush_round rrr_game matches 3 run function railroadrush:goldrush/defend/score/3

# Death
execute as @a[tag=in_gold_rush,scores={univ_death=1..}] run function railroadrush:goldrush/defend/death
scoreboard players set @a univ_death 0

# # Actionbar-Timer
# execute if score goldrush_timeleft rrr_game matches 1.. run scoreboard players remove goldrush_timeleft rrr_game 1
# execute if score goldrush_timeleft rrr_game matches 1.. run scoreboard players operation goldrush_timeleft_sec rrr_game = goldrush_timeleft rrr_game
# execute if score goldrush_timeleft rrr_game matches 1.. run scoreboard players operation goldrush_timeleft_sec rrr_game /= 20 math
# execute if score goldrush_timeleft rrr_game matches 2.. run title @a actionbar ["",{"text": "5","font": "space:backspace"},{"text": "\ub096","font": "ui","color": "#4E5C24"},{"text": "75","font": "space:backspace"},"§b采集挑战: ",{"score":{"name": "goldrush_timeleft_sec","objective": "rrr_game"},"color": "#E3E3E3"},{"text":"s","color": "#E3E3E3"}]

schedule function railroadrush:goldrush/defend/loop 1t