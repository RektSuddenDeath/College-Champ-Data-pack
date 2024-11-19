#Red vs green in arena one
##Red Wins
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score red battlebox_game matches 0 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red","bold":true},{"text":"200"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score red battlebox_game matches 40..40 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red","bold":true},{"text":"240"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score red battlebox_game matches 80 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red","bold":true},{"text":"280"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score red battlebox_game matches 120 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red","bold":true},{"text":"320"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score red battlebox_game matches 160 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red","bold":true},{"text":"360"}]

execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run summon firework_rocket 15 7 19 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run summon firework_rocket 24 7 19 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run summon firework_rocket 14 7 9 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run summon firework_rocket 23 7 8 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run scoreboard players operation red battlebox_game += Win battlebox_stats
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run title @a[team=red] times 0 140 10
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run title @a[team=green] times 0 140 10
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run title @a[team=red] title {"text":"你赢了！","bold":true,"color":"green"}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run title @a[team=green] title {"text":"再接再厉！","bold":true,"color":"red"}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run tellraw @a[team=red] ["",{"text":"+","color":"gold"},{"score":{"name":"Win","objective":"battlebox_stats"},"color":"gold"},{"text":"分！ （获胜奖励）","color":"gold"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run effect give @a[team=red] minecraft:saturation 1 5 true
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run effect give @a[team=green] minecraft:saturation 1 5 true
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run clear @a[team=red]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run clear @a[team=green]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run effect give @a[team=red] minecraft:regeneration 3000 49 true
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run effect give @a[team=green] minecraft:regeneration 3000 49 true

execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score green battlebox_game matches 0 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"gray"},{"text":"0"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score green battlebox_game matches 40..40 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"gray"},{"text":"40"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score green battlebox_game matches 80 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"gray"},{"text":"80"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all if score green battlebox_game matches 120 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"gray"},{"text":"120"}]



execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 7 all run scoreboard players set arena1 battlebox_game 0

##green Wins
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score green battlebox_game matches 0 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green","bold":true},{"text":"200"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score green battlebox_game matches 40..40 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green","bold":true},{"text":"240"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score green battlebox_game matches 80 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green","bold":true},{"text":"280"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score green battlebox_game matches 120 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green","bold":true},{"text":"320"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score green battlebox_game matches 160 run team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green","bold":true},{"text":"360"}]

execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run summon firework_rocket 15 7 19 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;4312372],FadeColors:[I;4312372]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run summon firework_rocket 24 7 19 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;4312372],FadeColors:[I;4312372]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run summon firework_rocket 14 7 9 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;4312372],FadeColors:[I;4312372]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run summon firework_rocket 23 7 8 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;4312372],FadeColors:[I;4312372]}],Flight:2}}}}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run scoreboard players operation green battlebox_game += Win battlebox_stats
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run title @a[team=red] times 0 140 10
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run title @a[team=green] times 0 140 10
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run title @a[team=green] title {"text":"你赢了！","bold":true,"color":"green"}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run title @a[team=red] title {"text":"再接再厉！","bold":true,"color":"red"}
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run tellraw @a[team=green] ["",{"text":"+","color":"gold"},{"score":{"name":"Win","objective":"battlebox_stats"},"color":"gold"},{"text":"分！ （获胜奖励）","color":"gold"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run effect give @a[team=red] minecraft:saturation 1 5 true
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run effect give @a[team=green] minecraft:saturation 1 5 true
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run clear @a[team=red]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run clear @a[team=green]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run effect give @a[team=green] minecraft:regeneration 3000 49 true
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run effect give @a[team=red] minecraft:regeneration 3000 49 true



execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score red battlebox_game matches 0 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"gray"},{"text":"0"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score red battlebox_game matches 40..40 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"gray"},{"text":"40"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score red battlebox_game matches 80 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"gray"},{"text":"80"}]
execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all if score red battlebox_game matches 120 run team modify placeholder_2 suffix ["",{"text":"红队: ","color":"gray"},{"text":"120"}]

execute if score arena1 battlebox_game matches 1 if blocks 19 5 14 21 5 12 -7 4 3 all run scoreboard players set arena1 battlebox_game 0

##Blue vs Yellow in arena 2

##blue Wins
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score blue battlebox_game matches 0 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue","bold":true},{"text":"200"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score blue battlebox_game matches 40..40 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue","bold":true},{"text":"240"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score blue battlebox_game matches 80 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue","bold":true},{"text":"280"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score blue battlebox_game matches 120 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue","bold":true},{"text":"320"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score blue battlebox_game matches 160 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue","bold":true},{"text":"360"}]

execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run summon firework_rocket 61 7 19 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2437522],FadeColors:[I;2437522]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run summon firework_rocket 70 7 19 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;2437522]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run summon firework_rocket 60 7 9 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;2437522]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run summon firework_rocket 69 7 8 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2437522],FadeColors:[I;2437522]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run scoreboard players operation blue battlebox_game += Win battlebox_stats
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run title @a[team=yellow] times 0 140 10
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run title @a[team=blue] times 0 140 10
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run title @a[team=blue] title {"text":"你赢了！","bold":true,"color":"green"}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run title @a[team=yellow] title {"text":"再接再厉！","bold":true,"color":"red"}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run tellraw @a[team=blue] ["",{"text":"+","color":"gold"},{"score":{"name":"Win","objective":"battlebox_stats"},"color":"gold"},{"text":"分！ （获胜奖励）","color":"gold"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run effect give @a[team=yellow] minecraft:saturation 1 5 true
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run effect give @a[team=blue] minecraft:saturation 1 5 true
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run clear @a[team=yellow]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run clear @a[team=blue]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run effect give @a[team=blue] minecraft:regeneration 3000 49 true
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run effect give @a[team=yellow] minecraft:regeneration 3000 49 true



execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score yellow battlebox_game matches 0 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"gray"},{"text":"0"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score yellow battlebox_game matches 40..40 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"gray"},{"text":"40"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score yellow battlebox_game matches 80 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"gray"},{"text":"80"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all if score yellow battlebox_game matches 120 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"gray"},{"text":"120"}]

execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 11 all run scoreboard players set arena2 battlebox_game 0


##yellow Wins
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score yellow battlebox_game matches 0 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow","bold":true},{"text":"200"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score yellow battlebox_game matches 40..40 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow","bold":true},{"text":"240"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score yellow battlebox_game matches 80 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow","bold":true},{"text":"280"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score yellow battlebox_game matches 120 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow","bold":true},{"text":"320"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score yellow battlebox_game matches 160 run team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow","bold":true},{"text":"360"}]

execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run summon firework_rocket 61 7 19 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;14602026],FadeColors:[I;14602026]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run summon firework_rocket 70 7 19 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026],FadeColors:[I;14602026]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run summon firework_rocket 60 7 9 {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026],FadeColors:[I;14602026]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run summon firework_rocket 69 7 8 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;14602026],FadeColors:[I;14602026]}],Flight:2}}}}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run scoreboard players operation yellow battlebox_game += Win battlebox_stats
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run title @a[team=blue] times 0 140 10
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run title @a[team=yellow] times 0 140 10
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run title @a[team=yellow] title {"text":"你赢了！","bold":true,"color":"green"}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run title @a[team=blue] title {"text":"再接再厉！","bold":true,"color":"red"}
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run tellraw @a[team=yellow] ["",{"text":"+","color":"gold"},{"score":{"name":"Win","objective":"battlebox_stats"},"color":"gold"},{"text":"分！ （获胜奖励）","color":"gold"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run effect give @a[team=blue] minecraft:saturation 1 5 true
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run effect give @a[team=yellow] minecraft:saturation 1 5 true
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run clear @a[team=blue]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run clear @a[team=yellow]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run effect give @a[team=yellow] minecraft:regeneration 3000 49 true
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run effect give @a[team=blue] minecraft:regeneration 3000 49 true



execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score blue battlebox_game matches 0 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"gray"},{"text":"0"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score blue battlebox_game matches 40..40 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"gray"},{"text":"40"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score blue battlebox_game matches 80 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"gray"},{"text":"80"}]
execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all if score blue battlebox_game matches 120 run team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"gray"},{"text":"120"}]

execute if score arena2 battlebox_game matches 1 if blocks 67 5 12 65 5 14 -7 4 -1 all run scoreboard players set arena2 battlebox_game 0