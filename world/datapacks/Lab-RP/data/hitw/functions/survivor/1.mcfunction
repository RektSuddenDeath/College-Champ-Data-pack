
execute if entity @a[tag=hitw_alive] run tellraw @a[tag=hitw_alive] ["","§a[§r彀§a] ",{"text": "你是最后存活的玩家！","color":"green","bold":true}]
execute if entity @a[tag=hitw_alive] run tellraw @a[tag=!hitw_alive] ["","§b[§r輶§b] ",{"selector":"@a[tag=hitw_alive]"},"§b是最后存活的玩家！"]
execute unless entity @a[tag=hitw_alive] run tellraw @a[tag=hitw_alive] ["","§b[§r輶§b] ","§b本轮无人生还！"]

effect give @a resistance 1 6 true
execute as @a[team=red,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;16713728]}]}}}}
execute as @a[team=blue,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;1638655]}]}}}}
execute as @a[team=green,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;5373696]}]}}}}
execute as @a[team=yellow,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;15662848]}]}}}}
execute as @a[team=cyan,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;55000]}]}}}}
execute as @a[team=orange,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;16763904]}]}}}}
execute as @a[team=purple,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;11403519]}]}}}}
execute as @a[team=pink,tag=hitw_alive] at @s run summon firework_rocket ~ ~2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:1,Colors:[I;16711863]}]}}}}

function hitw:end