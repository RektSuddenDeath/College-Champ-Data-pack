
execute as @a[team=orange] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=orange] ["",{"selector":"@a[team=orange,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]