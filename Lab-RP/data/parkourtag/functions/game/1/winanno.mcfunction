
tellraw @a " "
tellraw @a "回合 1/7"
execute if score redwin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   红队","color":"red","bold":true},{"text": " vs. ","color":"white"},{"text": "蓝队","color":"gray","bold":false}]
execute if score bluewin pkt_cache matches 1 run tellraw @a ["",{"text": "  红队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "蓝队","color":"blue","bold":true}]
execute if score redwin pkt_cache matches 0 if score bluewin pkt_cache matches 0 run tellraw @a ["",{"text": "   红队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "蓝队","color": "gray"}]

execute if score greenwin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   绿队","color":"green","bold":true},{"text": " vs. ","color":"white"},{"text": "黄队","color":"gray","bold":false}]
execute if score yellowwin pkt_cache matches 1 run tellraw @a ["",{"text": "  绿队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "黄队","color":"yellow","bold":true}]
execute if score greenwin pkt_cache matches 0 if score yellowwin pkt_cache matches 0 run tellraw @a ["",{"text": "   绿队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "黄队","color": "gray"}]

execute if score cyanwin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   青队","color":"dark_aqua","bold":true},{"text": " vs. ","color":"white"},{"text": "粉队","color":"gray","bold":false}]
execute if score pinkwin pkt_cache matches 1 run tellraw @a ["",{"text": "  青队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "粉队","color":"light_purple","bold":true}]
execute if score cyanwin pkt_cache matches 0 if score pinkwin pkt_cache matches 0 run tellraw @a ["",{"text": "   青队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "粉队","color": "gray"}]

execute if score orangewin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   橙队","color":"gold","bold":true},{"text": " vs. ","color":"white"},{"text": "紫队","color":"gray","bold":false}]
execute if score purplewin pkt_cache matches 1 run tellraw @a ["",{"text": "  橙队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "紫队","color":"dark_purple","bold":true}]
execute if score orangewin pkt_cache matches 0 if score purplewin pkt_cache matches 0 run tellraw @a ["",{"text": "   橙队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "紫队","color": "gray"}]
tellraw @a ""

scoreboard players set redwin pkt_cache 0
scoreboard players set bluewin pkt_cache 0
scoreboard players set greenwin pkt_cache 0
scoreboard players set yellowwin pkt_cache 0
scoreboard players set cyanwin pkt_cache 0
scoreboard players set pinkwin pkt_cache 0
scoreboard players set orangewin pkt_cache 0
scoreboard players set purplewin pkt_cache 0

schedule function parkourtag:alive 3s
schedule function parkourtag:aliveanno 5s