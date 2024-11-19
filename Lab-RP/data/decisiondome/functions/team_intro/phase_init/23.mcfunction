
#tp @a[team=red] -9999.50 106.00 -10015.09 -720 0
# tp @a[team=blue] -9984.23 106.00 -9999.44 -630 0
# tp @a[team=green] -9999.45 106.00 -9984.63 -540 0
# tp @a[team=yellow] -10014.76 106.00 -9999.51 -449.90 0
#tp @a[team=purple] -10010.59 106.00 -10010.66 315.67 0
# tp @a[team=pink] -10010.53 106.00 -9988.49 225.53 0
# tp @a[team=cyan] -9988.61 106.00 -9988.66 -224.89 0
tp @a[team=orange] -9988.47 106.00 -10010.52 45.76 -0.56

kill @e[type=marker,tag=team_intro]
#function decisiondome:team_intro/phase_loop/11

schedule clear decisiondome:team_intro/phase_loop/22
tag @a[team=purple] add team_intro_tp
effect clear @a[team=orange] invisibility
effect clear @a[team=purple] invisibility
function decisiondome:team_intro/phase_init/tp
#summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711680]}]}}}}
#summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;524543]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;6225664]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16773632]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;35980]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711922]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16755200]}]}}}}
summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;10617087]}]}}}}

title @a title ["§5§l紫队"]
title @a subtitle [{"selector":"@a[team=purple]"}] 
title @a times 5 30 5

tellraw @a ""
tellraw @a ["§5紫队: ",{"selector":"@a[team=purple]"}]