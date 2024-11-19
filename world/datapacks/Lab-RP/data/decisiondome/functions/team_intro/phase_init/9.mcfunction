scoreboard objectives add temp_particle_direction dummy

tag @a[team=red] add team_intro_tp
effect clear @a[team=red] invisibility
function decisiondome:team_intro/phase_init/tp
summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711680]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;524543]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;6225664]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16773632]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;35980]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711922]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16755200]}]}}}}
# summon firework_rocket -10000 105 -10000 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;10617087]}]}}}}

title @a title ["§c§l红队"]
title @a subtitle [{"selector":"@a[team=red]"}] 
title @a times 5 30 5

tellraw @a ""
tellraw @a ["§c红队: ",{"selector":"@a[team=red]"}]

#function decisiondome:team_intro/phase_loop/9