
scoreboard players add Finished tgttos_game 1
gamemode spectator @s
clear @s

scoreboard players operation @s tgttos_indvscore += currentfinish tgttos_scorings

execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=red] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711680]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=blue] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;524543]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=green] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;6225664]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=yellow] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16773632]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=cyan] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;35980]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=pink] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711922]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=orange] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16755200]}]}}}}
execute if score fireworkEffectActive tourney_stats matches 1 as @s[team=purple] at @s run summon firework_rocket ~ ~2.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;10617087]}]}}}}


execute if score Finished tgttos_game matches 1 run scoreboard players add @s tgttos_indvscore 120
execute if score Finished tgttos_game matches 2 run scoreboard players add @s tgttos_indvscore 100
execute if score Finished tgttos_game matches 3 run scoreboard players add @s tgttos_indvscore 80
execute if score Finished tgttos_game matches 4 run scoreboard players add @s tgttos_indvscore 65
execute if score Finished tgttos_game matches 5 run scoreboard players add @s tgttos_indvscore 50
execute if score Finished tgttos_game matches 6 run scoreboard players add @s tgttos_indvscore 40
execute if score Finished tgttos_game matches 7 run scoreboard players add @s tgttos_indvscore 30
execute if score Finished tgttos_game matches 8 run scoreboard players add @s tgttos_indvscore 20

execute if score Finished tgttos_game matches 1 run tellraw @s ["[§6+120分§r] ","§a[§r彀§a] ","§7你是第§61§7个完成的玩家！"]
execute if score Finished tgttos_game matches 2 run tellraw @s ["[§6+100分§r] ","§a[§r彀§a] ","§7你是第§62§7个完成的玩家！"]
execute if score Finished tgttos_game matches 3 run tellraw @s ["[§6+80分§r] ","§a[§r彀§a] ","§7你是第§63§7个完成的玩家！"]
execute if score Finished tgttos_game matches 4 run tellraw @s ["[§6+65分§r] ","§a[§r彀§a] ","§7你是第§64§7个完成的玩家！"]
execute if score Finished tgttos_game matches 5 run tellraw @s ["[§6+50分§r] ","§a[§r彀§a] ","§7你是第§65§7个完成的玩家！"]
execute if score Finished tgttos_game matches 6 run tellraw @s ["[§6+40分§r] ","§a[§r彀§a] ","§7你是第§66§7个完成的玩家！"]
execute if score Finished tgttos_game matches 7 run tellraw @s ["[§6+30分§r] ","§a[§r彀§a] ","§7你是第§67§7个完成的玩家！"]
execute if score Finished tgttos_game matches 8 run tellraw @s ["[§6+20分§r] ","§a[§r彀§a] ","§7你是第§68§7个完成的玩家！"]

execute at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute at @s run tellraw @a[scores={tgttos_finish=..0}] ["","§a[§r彀§a] ",{"selector":"@s"},{"text": "第","color":"gray"},{"score":{"name": "Finished","objective": "tgttos_game"},"color":"aqua"},{"text": "个到达了另一边！","color":"gray"}]
execute at @s run tellraw @s ["[",{"text": "+","color":"gold"},{"score":{"name": "currentfinish","objective": "tgttos_scorings"},"color":"gold"},{"text": "分","color":"gold"},"] ","§a[§r彀§a] ",{"text": "你第","color":"green","bold":true},{"score":{"name": "Finished","objective": "tgttos_game"},"color":"gold","bold": true},{"text": "个到达了另一边！","bold": true,"color":"green"}]

execute at @s if score round_time_minute tgttos_game matches 0 run tellraw @s ["  §7↪ ","§7完成用时",{"score":{"name": "round_time_second","objective": "tgttos_game"},"color": "white"},"§fs§7."]
execute at @s if score round_time_minute tgttos_game matches 1.. run tellraw @s ["  §7↪ ","§7完成用时",{"score":{"name": "round_time_minute","objective": "tgttos_game"},"color": "white"},"§fm",{"score":{"name": "round_time_second","objective": "tgttos_game"},"color": "white"},"§fs§7."]
execute at @s run tellraw @s ""

execute run scoreboard players operation currentfinish tgttos_scorings -= rankdeduct tgttos_scorings

execute as @s[team=red] unless entity @r[team=red,gamemode=adventure] run function tgttos:team_completed/red
execute as @s[team=blue] unless entity @r[team=blue,gamemode=adventure] run function tgttos:team_completed/blue
execute as @s[team=green] unless entity @r[team=green,gamemode=adventure] run function tgttos:team_completed/green
execute as @s[team=yellow] unless entity @r[team=yellow,gamemode=adventure] run function tgttos:team_completed/yellow
execute as @s[team=cyan] unless entity @r[team=cyan,gamemode=adventure] run function tgttos:team_completed/cyan
execute as @s[team=pink] unless entity @r[team=pink,gamemode=adventure] run function tgttos:team_completed/pink
execute as @s[team=orange] unless entity @r[team=orange,gamemode=adventure] run function tgttos:team_completed/orange
execute as @s[team=purple] unless entity @r[team=purple,gamemode=adventure] run function tgttos:team_completed/purple

# Round Placement
execute if score round tgttos_game matches 1 run scoreboard players operation @s tgttos_recap_r1 = Finished tgttos_game
execute if score round tgttos_game matches 2 run scoreboard players operation @s tgttos_recap_r2 = Finished tgttos_game
execute if score round tgttos_game matches 3 run scoreboard players operation @s tgttos_recap_r3 = Finished tgttos_game
execute if score round tgttos_game matches 4 run scoreboard players operation @s tgttos_recap_r4 = Finished tgttos_game
execute if score round tgttos_game matches 5 run scoreboard players operation @s tgttos_recap_r5 = Finished tgttos_game
execute if score round tgttos_game matches 6 run scoreboard players operation @s tgttos_recap_r6 = Finished tgttos_game

