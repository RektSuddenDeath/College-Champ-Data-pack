
execute as @a[team=purple] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=purple] ["",{"selector":"@a[team=purple,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]