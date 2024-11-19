
execute as @a[team=cyan] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=cyan] ["",{"selector":"@a[team=cyan,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]