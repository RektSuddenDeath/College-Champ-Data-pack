
execute as @a[team=green] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=green] ["",{"selector":"@a[team=green,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]