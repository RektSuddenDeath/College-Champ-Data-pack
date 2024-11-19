


scoreboard players add orange pkt_wins 1
scoreboard players set orangewin pkt_cache 1
execute as @a[team=orange] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1


execute if score round pkt_game matches 1 run team modify placeholder_or1 suffix "/1"
execute if score round pkt_game matches 2 run team modify placeholder_or1 suffix "/2"
execute if score round pkt_game matches 3 run team modify placeholder_or1 suffix "/3"
execute if score round pkt_game matches 4 run team modify placeholder_or1 suffix "/4"
execute if score round pkt_game matches 5 run team modify placeholder_or1 suffix "/5"
execute if score round pkt_game matches 6 run team modify placeholder_or1 suffix "/6"
execute if score round pkt_game matches 7 run team modify placeholder_or1 suffix "/7"

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f橙队抓获了全部对方逃跑者并获得了胜利！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

execute if score orange pkt_wins matches 1 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "1","color": "white"}]
execute if score orange pkt_wins matches 2 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "2","color": "white"}]
execute if score orange pkt_wins matches 3 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "3","color": "white"}]
execute if score orange pkt_wins matches 4 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "4","color": "white"}]
execute if score orange pkt_wins matches 5 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "5","color": "white"}]
execute if score orange pkt_wins matches 6 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "6","color": "white"}]
execute if score orange pkt_wins matches 7 run team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "7","color": "white"}]
# Splits Points according to Team players
execute if score orangeplayers pkt_cache matches 4 run scoreboard players add @a[team=orange] pkt_indvscore 40
execute if score orangeplayers pkt_cache matches 4 run tellraw @a[team=orange] [{"text": "[+40分]","color": "gold"}," §a[§f鄵§a] ","§a你的队伍存活时间比对手更长，获得了本局胜利！"]

execute if score orangeplayers pkt_cache matches 3 run scoreboard players add @a[team=orange] pkt_indvscore 53
execute if score orangeplayers pkt_cache matches 3 run scoreboard players add @r[team=orange] pkt_indvscore 1
execute if score orangeplayers pkt_cache matches 3 run tellraw @a[team=orange] [{"text": "[+53分]","color": "gold"}," §a[§f鄵§a] ","§a你的队伍存活时间比对手更长，获得了本局胜利！"]

execute if score orangeplayers pkt_cache matches 2 run scoreboard players add @a[team=orange] pkt_indvscore 80
execute if score orangeplayers pkt_cache matches 2 run tellraw @a[team=orange] [{"text": "[+80分]","color": "gold"}," §a[§f鄵§a] ","§a你的队伍存活时间比对手更长，获得了本局胜利！"]