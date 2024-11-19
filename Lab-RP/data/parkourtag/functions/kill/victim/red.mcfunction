
execute as @a[team=red] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
tellraw @a[team=red] ["",{"selector":"@a[team=red,scores={pkt_death=1..}]"},{"text": "被"},{"selector":"@s"},{"text": "抓捕"}]