
execute as @a[team=yellow] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=yellow] ["",{"selector":"@a[team=yellow,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]