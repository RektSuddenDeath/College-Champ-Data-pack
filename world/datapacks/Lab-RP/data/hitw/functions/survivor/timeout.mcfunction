
tellraw @a[tag=hitw_alive] ["","§r[§6+",{"score":{"name": "score_timeout","objective": "hitw_game"},"color": "gold"},"§6分§r]","§a[§r彀§a] ",{"text": "你存活到了时间结束！","color":"green","bold":true}]
tellraw @a[tag=!hitw_alive] ["","§b[§r輶§b] ","§b时间到！ ",{"selector":"@a[tag=hitw_alive]"},{"text": "§b是最后存活的玩家！"}]

effect give @a resistance 1 5 true
execute as @a[team=red,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;16713728]}]}}}}
execute as @a[team=blue,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;1638655]}]}}}}
execute as @a[team=green,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;5373696]}]}}}}
execute as @a[team=yellow,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;15662848]}]}}}}
execute as @a[team=cyan,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;55000]}]}}}}
execute as @a[team=orange,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;16763904]}]}}}}
execute as @a[team=purple,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;11403519]}]}}}}
execute as @a[team=pink,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;16711863]}]}}}}

execute as @a[tag=hitw_alive] run scoreboard players operation @s hitw_roundscore += score_timeout hitw_game

function hitw:end