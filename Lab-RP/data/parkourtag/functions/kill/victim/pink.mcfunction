
execute as @a[team=pink] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=pink] ["",{"selector":"@a[team=pink,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]