
execute as @a[team=blue] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=blue] ["",{"selector":"@a[team=blue,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]