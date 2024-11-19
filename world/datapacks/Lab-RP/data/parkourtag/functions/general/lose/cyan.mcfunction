tellraw @a[team=cyan] ["§c[§r鄵§c] ",{"text": "你的队伍比对手先被全部抓获，对手获得了加分。","color": "red","bold": true}]
execute as @a[team=cyan] at @s run playsound sound.team_eliminated record @s


execute if score round pkt_game matches 1 run team modify placeholder_cy1 suffix "/1"
execute if score round pkt_game matches 2 run team modify placeholder_cy1 suffix "/2"
execute if score round pkt_game matches 3 run team modify placeholder_cy1 suffix "/3"
execute if score round pkt_game matches 4 run team modify placeholder_cy1 suffix "/4"
execute if score round pkt_game matches 5 run team modify placeholder_cy1 suffix "/5"
execute if score round pkt_game matches 6 run team modify placeholder_cy1 suffix "/6"
execute if score round pkt_game matches 7 run team modify placeholder_cy1 suffix "/7"